from os import name
from . import views
from django.urls import path
from django.contrib import admin
from .views import Activate

urlpatterns = [
    path('',views.intro,name="intro"),
    path('admin/', admin.site.urls),
    path('login/', views.page_login, name="login"),
    path('signup/', views.sign_up, name="sign_up"),
    path('signup/emailcheck/', views.email_check, name="email_check"),
    path('signup_action/', views.signup_action, name="signup_action"),
    path('modifyData/', views.modify_data, name="sign_up"),
    path('login_action/', views.login_action, name="login_action"),
    path('logout_action/', views.logout_action, name="logout_action"),
    path('activate/<str:uidb64>/<str:token>', Activate.as_view(), name="activate")
]