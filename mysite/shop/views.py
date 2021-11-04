from django.shortcuts import render
import requests 
import json 

# Create your views here.

#如果有這個要求 就導去'shop.html'
def shop(request):
    
    url = 'http://tbike-data.tainan.gov.tw/Service/StationStatus/Json'
    data = requests.get(url).text
    bike = json.loads(data)
    station = list()
    rent = list()
    for row in bike:
        station.append(row['StationName'])  
        rent.append(row['AvaliableBikeCount'])
        
    return render(request,'shop.html',locals()) #locals()傳回值為字典