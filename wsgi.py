import django.core.handlers.wsgi

import os
import sys

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__),'hospitality')))
#os.environ['DJANGO_SETTINGS_MODULE'] = 'hospitality.settings_dotcloud'
os.environ['DJANGO_SETTINGS_MODULE'] = 'hospitality.settings'
from django.core.wsgi import get_wsgi_application
application = django.core.handlers.wsgi.WSGIHandler()
