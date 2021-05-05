from django.http.request import HttpRequest
from django.http.response import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from django.core.exceptions import ImproperlyConfigured
import os
import json

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
        return render(request, 'signMaker/drawing.html')
    else:
        return redirect('login')


def mainPage(request):
    if session_existence(request):
        return render(request, 'signMaker/selectOption.html')
    else:
        return redirect('login')


def watermarkPage(request):
    if session_existence(request):
         return render(request, 'signMaker/watermark.html')
    else:
        return redirect('login')
    
    
def passOptions(request):
    # return redirect('signCreate', request.GET)
    data = {
        "name": request.GET['name'],
        "options": request.GET['options'],
        "pointLetter": request.GET['pointLetter']
    }
    return render(request, 'signMaker/signCreate.html', data)
    


# def signCreate(request):
#     return render(request, 'signMaker/signCreate.html')