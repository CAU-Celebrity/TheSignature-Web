from django.conf.urls import include
from django.urls import path

urlpatterns = [
    path('', include('UserAccount.urls')),
    path('', include('signMaker.urls')),
]
