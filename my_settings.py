import os, json
from django.core.exceptions import ImproperlyConfigured

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

secret_file = os.path.join(BASE_DIR, 'TheSignature/secrets.json')

with open(secret_file) as f:
    secrets =  json.loads(f.read())

def get_secret(key, secrets=secrets):
    try:
        return secrets[key]
    except KeyError:
        error_msg = "Set the {} environment variable".format(key)
        raise ImproperlyConfigured(error_msg)

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': get_secret("DB_NAME"),
        'USER': get_secret("DB_USER"),
        'PASSWORD': get_secret("DB_PASSWD"),
        'HOST': '',
        'PORT': get_secret("DB_PORT")
    }
}

SECRET_KEY = get_secret("SECRET_KEY")
