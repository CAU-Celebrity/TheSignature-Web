from . import views
from django.urls import path


urlpatterns = [
    path('home/',views.mainPage, name="home"),
    path('home/passOptions/',views.passOptions, name="passOptions"),
    # path('home/signCreate/', views.signCreate, name="signCreate"),
    path('drawing/',views.drawingPage, name="drawing"),
    path('watermark/',views.watermarkPage, name="watermark")

]