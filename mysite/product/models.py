from django.db import models

# Create your models here.
class Product(models.Model):
    shop = models.CharField(max_length=15) #最大長度為15
    name = models.CharField(max_length=100) #最大長度100
    price = models.IntegerField()  #整數為intergerfield
    photo_url = models.CharField(max_length=200)
    link = models.CharField(max_length=200) 
    mount = models.IntegerField()
    create_date = models.DateField()
    product_type = models.IntegerField()

    class Meta:
	    db_table='product' #創建資料表
        
