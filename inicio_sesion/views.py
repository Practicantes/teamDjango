from django.shortcuts import render
from django.utils import timezone
# Create your views here.

def login(request):
    return render(request, 'inicio_sesion/login.html', {})