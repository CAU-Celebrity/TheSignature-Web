from django.http.request import HttpRequest
from django.http.response import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from django.core.exceptions import ImproperlyConfigured
import os, json   

secret_file = os.path.realpath('./secrets.json')

with open(secret_file) as f:
    secrets =  json.loads(f.read())

def get_secret(key, secrets=secrets):
    try:
        return secrets[key]
    except KeyError:
        error_msg = "Set the {} environment variable".format(key)
        raise ImproperlyConfigured(error_msg)


def drawingPage(request):
    return render(request, 'signMaker/drawing.html')

def createPage(request):
    return render(request, 'signMaker/signCreate.html')

def watermarkPage(request):
    return render(request, 'signMaker/watermark.html')