from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from userena.decorators import secure_required
from django.template import Context
#from django.utils import simplejson
from profiles.models import Profile
#from django.db import connection
import MySQLdb

@login_required
def promo(request):
    return render(request, 'static/promo.html')

@secure_required
def neworders(request, data = None):
    profile = Profile.objects.get(user_id=request.user.id)
    request.profile = profile

    #with connection.cursor() as cursor:
    #    cursor.execute('SELECT * FROM `antik_hospitality`.`order` WHERE accepted IS NULL AND resolved IS NULL AND canceled IS NULL AND order_cat_id = %s', [profile.order_cat_id])
    #    row = cursor.fetchone()

    db = MySQLdb.connect(user='root', db='antik_hospitality', passwd='n3tc1t1', host='172.24.0.12')
    cursor = db.cursor()
    cursor.execute('SELECT * FROM `order` WHERE accepted IS NULL AND resolved IS NULL AND canceled IS NULL AND order_cat_id = %s		' % profile.order_cat_id)
    orders = [row[0] for row in cursor.fetchall()]
    db.close()
    #return render(request, 'book_list.html', {'names': names})

    if not data: data = dict()
    #orders = {}
    #orders = '45000'
    #orders = Context({'price': '45000', 'partner': 'McDonald'})
    #data = {'orders': {'price': '45000', 'partner': 'McDonald'}}
    #data = Context(data)
    return render(request, 'static/neworders.html', data)


"""
from django.db import connection

def my_custom_sql(self):
    with connection.cursor() as cursor:
        cursor.execute("UPDATE bar SET foo = 1 WHERE baz = %s", [self.baz])
        cursor.execute("SELECT foo FROM bar WHERE baz = %s", [self.baz])
        row = cursor.fetchone()

    return row
"""
