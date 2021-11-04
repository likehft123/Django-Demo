from django.db import models

# Create your models here.
class Message(models.Model):
    title = models.CharField(max_length=200)
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=200)
    content = models.TextField()
    class Meta:
        db_table="message"