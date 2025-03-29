from django.shortcuts import render, redirect
from django.http import JsonResponse
from .models import Note

# Create your views here.

def home(request):
    if request.method == 'POST':
        content = request.POST.get('content')
        if content:
            Note.objects.create(content=content)
            return JsonResponse({'status': 'success'})
    notes = Note.objects.all().order_by('-created_at')
    return render(request, 'main/home.html', {'notes': notes})
