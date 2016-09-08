from django.contrib.auth.decorators import login_required
from django.shortcuts import render

@login_required
def promo(request):
    print request
    return render(request, 'static/promo.html')
