from django.shortcuts import render
from .models import Message


# Create your views here.
def message(request):

    if "title" in request.POST:
        title = request.POST['title']
        name = request.POST['username']
        email = request.POST['email']
        content = request.POST['content']
        
        Message.objects.create(title=title,name=name,email=email,content=content) #寫入資料庫

    return render(request,"message.html")