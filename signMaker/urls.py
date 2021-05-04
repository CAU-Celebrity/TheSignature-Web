from . import views
from django.urls import path


urlpatterns = [
    path('drawing/',views.drawingPage , name="drawing"),
    path('home/',views.mainPage , name="home"),
    path('watermark/',views.watermarkPage , name="watermark")

]