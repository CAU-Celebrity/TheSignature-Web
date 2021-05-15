import shutil
from django.http.request import HttpRequest
from django.http.response import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from django.core.exceptions import ImproperlyConfigured
from .models import preservedResult
from .models import preservedWatermark
from PIL import Image
import os
import json
import sys
import re
import io
import base64

sys.path.insert(
    1, '/Users/parksohyun/2021Capstone/TheSignature/signMaker/ml')
# sys.path.insert(
#     1, '/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/')
import ml_model

secret_file = os.path.realpath('./secrets.json')

with open(secret_file) as f:
    secrets = json.loads(f.read())


def get_secret(key, secrets=secrets):
    try:
        return secrets[key]
    except KeyError:
        error_msg = "Set the {} environment variable".format(key)
        raise ImproperlyConfigured(error_msg)


def session_existence(request):
    if 'user_email' not in request.session:
        return False
    else:
        return True


def drawingPage(request):
    if session_existence(request):
        rows = preservedResult.objects.filter(
            owner_email=request.session['user_email']).values()
        if len(rows) > 0:
            return render(request, 'signMaker/drawing.html', {'alpha_path': rows[0]['alpha_path']})
        else:
            return render(request, 'signMaker/drawing.html')
    else:
        return redirect('login')


def mainPage(request):
    if session_existence(request):
        return render(request, 'signMaker/selectOption.html')
    else:
        return redirect('login')


def getNumberOfWatermark(request):
    if session_existence(request):
        rows = preservedWatermark.objects.filter(
            owner_email=request.session['user_email']).values()
        return len(rows)
    else:
        return redirect('login')


def watermarkPage(request):
    if session_existence(request):
        rows = preservedResult.objects.filter(
            owner_email=request.session['user_email']).values()
        if len(rows) > 0:
            return render(request, 'signMaker/watermark.html', {'alpha_path': rows[0]['alpha_path']})
        else:
            return render(request, 'signMaker/watermark.html')
    else:
        return redirect('login')


def watermarkUpload(request):
    if session_existence(request):
        if request.method == 'POST':
            if request.POST.get('savedImg'):
                preservedDir = './signMaker/preservedWatermark/'
                if os.path.isdir(preservedDir)==False:
                    os.mkdir(preservedDir)
                image_path = 'signMaker/preservedWatermark/' + request.session['user_email'] + str(getNumberOfWatermark(request)+1) + '.png'
                savedImg = request.POST.get('savedImg', '')
                imgstr = re.search(r'base64,(.*)', savedImg).group(1)
                output = open(image_path, 'wb')
                output.write(base64.b64decode(imgstr))
                output.close()
                
                form = preservedWatermark()
                form.owner_email = request.session["user_email"]
                form.owner_last_name_kr = request.session["user_name"]
                form.result_path = image_path
                form.save()
            return redirect('watermark')
        else:
            return render(request, 'signMaker/watermark.html')
    else:
        return redirect('login')


def passOptions(request):
    if not session_existence(request):
        return redirect('login')
    ml_model.makeResult(request.GET['name'], '01')
    ml_model.makeResult(request.GET['name'], '02')
    ml_model.makeResult(request.GET['name'], '03')
    
    user_name = request.GET['name']
    options = request.GET['options']
    if request.GET['pointLetter'] != "": 
        point = int(request.GET['pointLetter'])
        data = {
            "name": user_name,
            "options": options,
            "pointLetter": user_name[point]
        }
    else:
        data = {
            "name": user_name,
            "options": options,
            "pointLetter": ""
        }

    return render(request, 'signMaker/signCreate.html', data)


def preserveResult(request):
    if not session_existence(request):
        return redirect('login')
    rows = preservedResult.objects.filter(
        owner_email=request.session['user_email'])
    path = ""

    preservedDir = './signMaker/preservedResult/'
    if os.path.isdir(preservedDir)==False:
        os.mkdir(preservedDir)
    alphaPreservedDir = './signMaker/alphaPreservedResult/'
    if os.path.isdir(alphaPreservedDir)==False:
        os.mkdir(alphaPreservedDir)

    if len(rows) < 5:
        path += shutil.copy("./signMaker/static/ml_result/" +
                            request.GET['file_name'], "./signMaker/preservedResult/" + request.session['user_email'] + str(len(rows) + 1) + ".png")
        path += shutil.copy("./signMaker/static/alpha_result/" +
                            request.GET['file_name'], "./signMaker/alphaPreservedResult/" + request.session['user_email'] + str(len(rows) + 1) + ".png")        
        preservedResult.objects.create(owner_email=request.session['user_email'], owner_last_name_kr=request.session['user_name'],
                                       result_path="../../signMaker/preservedResult/" + request.session['user_email'] + str(len(rows) + 1) + ".png",
                                       alpha_path="../../signMaker/alphaPreservedResult/" + request.session['user_email'] + str(len(rows) + 1) + ".png")
    return render(request, 'signMaker/signCreate.html')


def is_storable(request):
    if not session_existence(request):
        return redirect('login')
    rows = preservedResult.objects.filter(
        owner_email=request.session['user_email'])
    path = ""
    if len(rows) < 5:
        return HttpResponse('True')
    else:
        return HttpResponse('False')
