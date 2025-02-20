from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate,login,logout
from django.templatetags.static import static
from django.contrib import messages

from django.contrib.auth.models import User
from .models import komentar
from django.db.models import Q
from .forms import ImageUploadForm,FormKomentar,FormUserSignUp,FormUbahPassword

from django.contrib.auth.password_validation import validate_password
from django.core.exceptions import ValidationError

from django.core.paginator import Paginator

import tensorflow as tf
from PIL import Image
import numpy as np


def preprocess_image(image_path):
    
    img = Image.open(image_path).resize((255, 255))  
    img_array = np.array(img) / 255.0 
    if len(img_array.shape) == 2: 
        img_array = np.stack((img_array,)*3, axis=-1)
    img_array = np.expand_dims(img_array, axis=0)  
    return img_array

def index(request):

    model = tf.keras.models.load_model('media/model_buah_jambu_mete.h5')  # Sesuaikan path file model Anda

    if request.method == 'POST':
        form = ImageUploadForm(request.POST, request.FILES)
        if form.is_valid():
            uploaded_image = form.save() 
            image_path = uploaded_image.image.path  
            
            img_array = preprocess_image(image_path)

            try:
                prediction = model.predict(img_array)  
                result = "Matang" if prediction[0][0] > 0.5 else "Belum Matang"  
            except Exception as e:
                result = f"Error saat melakukan prediksi: {str(e)}"
            
            return render(request, 'cnn/index.html', {'result': result, 'image': uploaded_image})

    else:
        form = ImageUploadForm() 
    
    data = komentar.objects.all().order_by('-ditambahkan')
    validasi = FormKomentar(request.POST or None)

    if request.method == 'POST':
        if request.POST['tombol'] == 'Submit':
            if validasi.is_valid():
                validasi.save()
                return redirect('/#komentar')
        
    rating = komentar.rating
    konteks ={
        "data":data,
        "rating":rating,
        "form": form,
        "bintang1": [static('img/bintang.jpg')],
        "bintang2": [static('img/bintang.jpg')]*2,
        "bintang3": [static('img/bintang.jpg')]*3,
        "bintang4": [static('img/bintang.jpg')]*4,
        "bintang5": [static('img/bintang.jpg')]*5,
        }
    return render(request, 'cnn/index.html', konteks)

def daftar_user(request):
    salah = None
    if request.method == 'POST':
        regis_user = FormUserSignUp(request.POST or None)
        password = request.POST.get('password1')
        password_confirm = request.POST.get('password2')
            
        if regis_user.is_valid():
            if User.objects.filter(email=request.POST['email']).exists():
                messages.error(request,'Email Sudah Digunakan')
            elif len(request.POST['username']) <= 6:
                messages.error(request,'Username Terlalu Pendek')
            else:
                messages.success(request,'Registrasi Akun Berhasil')
                regis_user.save()
                return redirect('/daftar')
        else:
            if password != password_confirm:
                messages.error(request, "Password Konfirmasi tidak sama.")
            elif User.objects.filter(username=request.POST['username']).exists():
                messages.error(request,'Username Sudah Digunakan')
            else:
                try:               
                    validate_password(password)
                    messages.error(request,"Ada yang salah dengan password anda, silahkan cek kembali sudah sesuai ketentuan atau belum (kemungkinan: password anda terlalu mirip dengan identitas anda)")
                except ValidationError as e:
                    for error in e.messages:
                        messages.error(request, error)
            return render(request, 'sign-in-up-out/sign-up.html')
    else:
        regis_user = FormUserSignUp()
        
    konteks = {
        'form':regis_user,
    }    
    return render(request,'sign-in-up-out/sign-up.html',konteks)
    
def login_user(request):
    if request.user.is_authenticated:
        return redirect('/')
    
    if request.method == 'POST':
        usname = request.POST['usname']
        pw = request.POST['pw']
        usr = authenticate(request, username=usname, password=pw)
        if usr is not None:
            login(request, usr)
            return redirect('/')
        else:
            messages.error(request,'Username/Password Anda Salah')
    return render(request, 'sign-in-up-out/sign-in.html')

def logout_user(request):
    if not request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        logout(request)
        back = request.META.get('HTTP_REFERER', '/')
        return redirect(back)
    return render(request, 'sign-in-up-out/sign-out.html')

def ganti_password(request):
    if not request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        form = FormUbahPassword(request.user, request.POST or None)
        password = request.POST.get('old_password')
        if form.is_valid():
            form.save()
            return redirect('/')
        else:
            try:               
                validate_password(password)
                messages.error(request,"Ada yang salah dengan kata sandi anda, silahkan cek kembali sudah sesuai ketentuan atau belum")
            except ValidationError as e:
                for error in e.messages:
                    messages.error(request, error)
            return render(request, 'sign-in-up-out/ganti_password.html')
    else:
        form = FormUbahPassword(request.user)
    konteks = {
        'form': form
    }
    return render(request, 'sign-in-up-out/ganti_password.html',konteks)

def tabel_read(request):
    if not request.user.is_superuser:
        return redirect('/')
    cari = request.GET.get('cari')
    data = komentar.objects.all().order_by('-ditambahkan')
    
    paginator = Paginator(data, 5)  
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    
    if cari:
        page_obj = data.filter(
            Q(pengguna__icontains=cari) | Q(rating__icontains=cari)| Q(komen__icontains=cari)
        )
    konteks = {
        'page_obj': page_obj
    }
    return render(request, 'tabel/tabel.html',konteks)

def tabel_create(request):
    if not request.user.is_superuser:
        return redirect('/')
    
    data =  User.objects.all()
    validasi = FormKomentar(request.POST or None)  
    if request.POST:
        if validasi.is_valid():
            validasi.save()
            return redirect('/tabel')
        
    konteks={
        'data':data
        }
    return render(request, 'tabel/create.html',konteks)

def tabel_del(request,id):
    komentar.objects.filter(id=id).delete()
    return redirect('/tabel')

def tabel_edit(request, id):
    if not request.user.is_superuser:
        return redirect('/')

    data = get_object_or_404(komentar, id=id)
    validasi = FormKomentar(request.POST or None, instance=data)

    if request.method == 'POST':
        if validasi.is_valid():
            validasi.save()
            return redirect('/tabel')

    konteks={
        'data':data,
        }
    return render(request, 'tabel/update.html',konteks)