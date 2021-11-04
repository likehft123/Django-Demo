from django.core import paginator
from django.shortcuts import render
from .models import Product
#換頁相關  EmptyPage(空白業)  PageNotAnInteger(換頁錯誤page為非整數)
from django.core.paginator import Page, Paginator,EmptyPage,PageNotAnInteger

def index(request):
    goods = Product.objects.all().order_by('-id')[:3]
    content = {'productlist':goods}
    return render(request,'index.html',content)



# Create your views here.
def product(request):
    #要先設定全域變數,不然return時無法讀取
    name = ''
    startp = ''
    endp = ''
    if "product" in request.GET: #按下搜尋就會有product
        name = request.GET["product"]  #將?product= xxx的東西放入name
        startp = request.GET["startp"] #將?startp= xxx的東西放入startp
        endp = request.GET["endp"]     #將?endp= xxx的東西放入endp
        
        if len(name) > 0 and len(startp) > 0 and len(endp) > 0 :  #如果產品,最低價格,最高價格都有輸入
            #icontains內文有name,gte為大於等於,lte為小於等於
            goods = Product.objects.filter(name__icontains=name,price__gte=startp,price__lte=endp).order_by("-id") 
            
        elif len(name) == 0 and len(startp) > 0 and len(endp) > 0 :#如果產品沒輸入,最低價格,最高價格都有輸入
            goods = Product.objects.filter(price__gte=startp,price__lte=endp).order_by("-id") 

        else:
            goods = Product.objects.filter(name__icontains=name).order_by("-id") #以上面name去過濾資料庫裡的name並放在goods
    else:
        goods = Product.objects.all().order_by('id')  ##遞增   遞減為('-id')
    
    paginator = Paginator(goods,20) #以20個為一頁做分頁

    page = request.GET.get("page") #以url的page來找頁面 
    try:
        goods = paginator.page(page)

    except PageNotAnInteger:  #如換頁url為非整數
        goods = paginator.page(1)  #則跳到第一頁

    except EmptyPage:   #如為空白頁 (超出範圍)
        goods = paginator.page(paginator.num_pages) #則跳到最後一頁

    #新增'product':name,'startp':startp,'endp':endp 將這些值也回傳給url
    content = {'productlist':goods,'product':name,'startp':startp,'endp':endp}
    return render(request,'product.html',content)