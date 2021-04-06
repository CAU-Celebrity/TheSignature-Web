from . import views
from django.urls import path


urlpatterns = [
    path('drawing/',views.drawingPage , name="drawing"),
    path('home/',views.createPage , name="create"),
    path('watermark/',views.watermarkPage , name="watermark")

]