from django.http.request import HttpRequest
from django.http.response import HttpResponse, JsonResponse
from rest_framework import viewsets
from django.shortcuts import redirect, render
from .models import UserInfo
import pymysql
from django.core.exceptions import ImproperlyConfigured, ValidationError
from django.views.generic import View
from django.contrib.sites.shortcuts import get_current_site
import os, json
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.core.mail import EmailMessage
from .tokens import account_activation_token
from .text import message

class Activate(View):
    def get(self, request, uidb64, token):
        try:
            uid = force_text(urlsafe_base64_decode(uidb64))
            user = UserInfo.objects.get(pk=uid)

            if account_activation_token.check_token(user, token):
                user.is_active = True
                user.save()
                return redirect('login')

            return JsonResponse({"message" : "AUTH FAIL"}, status=400)

        except ValidationError:
            return JsonResponse({"message" : "TYPE_ERROR"}, status=400)
        except KeyError:
            return JsonResponse({"message" : "INVALID_KEY"}, status=400)       


secret_file = os.path.realpath('./secrets.json')

with open(secret_file) as f:
    secrets =  json.loads(f.read())

def get_secret(key, secrets=secrets):
    try:
        return secrets[key]
    except KeyError:
        error_msg = "Set the {} environment variable".format(key)
        raise ImproperlyConfigured(error_msg)

def intro(request):
    return render(request,"UserAccount/intro.html")

def page_login(request):
    if 'err_appear' in request.session:
        if request.session['err_appear'] == False: # First reload, express the reason why the login has failed
            request.session['err_appear'] = True
        else: # Second reload, not express err and delete error related session
            del request.session['err_appear']
            del request.session['err_message']

    if session_existence(request):
        return redirect('intro')
    else:
        return render(request, "UserAccount/login.html")

def logout_action(request):
    expire_session(request)
    return redirect('login')

def sign_up(request):
    if 'err_appear' in request.session:
        if request.session['err_appear'] == False: # First reload, express the reason why the login has failed
            request.session['err_appear'] = True
        else: # Second reload, not express err and delete error related session
            del request.session['err_appear']
            del request.session['err_message']

    if session_existence(request):
        return redirect('intro')
    else:
        return render(request, "UserAccount/sign_up.html")

def modify_data(request):
    return render(request, "UserAccount/editInfo.html")

def saved_signs(request):
    return render(request, "UserAccount/savedSignatures.html")

def email_check(request):
    request_email = request.GET['request_email']
    if email_existence(request_email):
        return HttpResponse('Exist')
    else:
        return HttpResponse('NotExist')

def signup_action(request):
    if request.method == "POST":
        if request.POST["user_passwd"] == request.POST["user_passwd_check"]: # Password check는 Front에서 Ajax 사용
            if email_existence(request.POST['user_email']) == False:
                user = UserInfo.objects.create(
                    user_email=request.POST['user_email'], 
                    user_password=password_hash(request.POST['user_passwd']), 
                    first_name_kr=request.POST['first_name_kr'], 
                    last_name_kr=request.POST['last_name_kr'], 
                    first_name_en=request.POST['first_name_en'], 
                    last_name_en=request.POST['last_name_en'],
                    is_active=False
                    )
                res_data ={}
                send_validation_mail(request, user, request.POST['user_email'])
                res_data['email_sent']=request.POST['user_email']+" 로 가입확인 이메일이 전송되었습니다."
                return render(request, 'UserAccount/login.html',res_data)
                # return redirect('home')
            else:
                return redirect('sign_up')
        else:
            return redirect('sign_up')

    return render(request, 'signature/sign_up.html')

def send_validation_mail(request, user, email_address):
    mailTitle = "Signature 이메일 인증을 완료해주세요."
    domain = get_current_site(request).domain
    uidb64 = urlsafe_base64_encode(force_bytes(user.pk))
    token = account_activation_token.make_token(user)
    mailData = message(domain, uidb64, token)
    mailTo = email_address
    email = EmailMessage(mailTitle, mailData, to=[mailTo])
    email.send()

def get_db_cursor():
    conn = pymysql.connect(host=get_secret('DB_HOST'), user=get_secret('DB_USER'), password=get_secret('DB_PASSWD'), db=get_secret('DB_NAME'), charset='utf8')
    return conn.cursor()

def password_hash(password):
    cursor = get_db_cursor()
    sql = "SELECT sha2('" + password +"', 256)"
    cursor.execute(sql)
    row = cursor.fetchone()
    return row[0]

def password_confirm(user_email, input_passwd):
    cursor = get_db_cursor()
    sql = "SELECT user_password FROM UserAccount_userinfo WHERE user_email='" + user_email + "'"
    cursor.execute(sql)
    row = cursor.fetchone()
    if password_hash(input_passwd) == row[0]:
        return True
    else:
        return False

def email_existence(user_email):
    cursor = get_db_cursor()
    sql = "SELECT count(*) FROM UserAccount_userinfo WHERE user_email = '" + user_email + "'"
    cursor.execute(sql)
    row = cursor.fetchone()
    if row[0] == 0:
        return False
    else:
        return True

def save_session(request, user_email):
    if email_existence(user_email):
        request.session['user_email'] = user_email
        cursor = get_db_cursor()
        sql = "SELECT last_name_kr FROM UserAccount_userinfo WHERE user_email = '" + user_email + "'"
        cursor.execute(sql)
        row = cursor.fetchone()
        request.session['user_name'] = row[0]


def expire_session(request):
    del request.session['user_email']

def session_existence(request):
    if 'user_email' not in request.session:
        return False
    else:
        return True

def active_check(user_email):
    cursor = get_db_cursor()
    sql = "SELECT is_active FROM UserAccount_userinfo WHERE user_email='" + user_email + "'"
    cursor.execute(sql)
    row = cursor.fetchone()
    if row[0]:
        return True
    else:
        return False

def login_action(request):
    login_success = False
    if request.method == "POST":
        email_exist = email_existence(request.POST["user_email"])
        if email_exist == False: # 존재하지 않는 이메일
            request.session['err_message'] = "가입되지 않은 이메일입니다"
            request.session['err_appear'] = False
            return redirect('login')
        else:
            login_success = password_confirm(request.POST["user_email"], request.POST["user_passwd"])
            if login_success == False: # 비밀번호 틀림
                request.session['err_message'] = "올바르지 않은 비밀번호입니다"
                request.session['err_appear'] = False
                return redirect('login')

            elif login_success == True:

                if active_check(request.POST["user_email"]):
                    save_session(request, request.POST["user_email"])
                    return redirect('home')
                else:
                    request.session['err_message'] = "가입하신 이메일에 전송된 링크를 통해 인증 후에 로그인하세요"
                    request.session['err_appear'] = False
                    return redirect('login')

    return render(request, 'UserAccount/login.html', context={'err_message': "Wrong Access"})
