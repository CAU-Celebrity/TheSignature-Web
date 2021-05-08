from . import views
from django.urls import path


urlpatterns = [
    path('home/',views.mainPage, name="home"),
    path('home/passOptions/',views.passOptions, name="passOptions"),
    path('home/passOptions/preserveResultAction/',views.preserveResult, name="preserveResult"),
    # path('home/signCreate/', views.signCreate, name="signCreate"),
    path('drawing/',views.drawingPage, name="drawing"),
    path('watermark/',views.watermarkPage, name="watermark")

]