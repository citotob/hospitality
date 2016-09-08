#!/usr/bin/env python
import os
import sys

if __name__ == "__main__":
    cwd = os.path.dirname(__file__)
    sys.path.append(os.path.join(os.path.abspath(os.path.dirname(cwd)), '../'))

    #from django.core.wsgi import get_wsgi_application
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "hospitality.settings")
    #application = get_wsgi_application()
    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
