from django.db import models

# Create your models here.

class UploadedImage(models.Model):
    image = models.ImageField(upload_to='uploaded_images/')
    uploaded_at = models.DateTimeField(auto_now_add=True)
    
class komentar(models.Model):
    id = models.AutoField(primary_key=True)
    pengguna = models.CharField(max_length=50)
    rating = models.CharField(max_length=1)
    komen = models.TextField(max_length=500)
    ditambahkan = models.DateTimeField(auto_now_add=True)
    diupdate = models.DateTimeField(auto_now=True)
    def __str__(self):
        return "%d.%s"%(self.id,self.pengguna)
