from django.conf.urls import include
from django.urls import path

urlpatterns = [
    path('userAccount/', include('UserAccount.urls')),
    path('signMaker/', include('signMaker.urls')),
]
