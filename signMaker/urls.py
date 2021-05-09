from . import views
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('home/',views.mainPage, name="home"),
    path('home/passOptions/',views.passOptions, name="passOptions"),
    path('home/passOptions/preserveResultAction/',views.preserveResult, name="preserveResult"),
    path('home/passOptions/is_storable/',views.is_storable, name="is_storable"),
    # path('home/signCreate/', views.signCreate, name="signCreate"),
    path('drawing/',views.drawingPage, name="drawing"),
    path('watermark/',views.watermarkPage, name="watermark")

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)