from django.urls import path

from . import views 

urlpatterns = [
    path('', views.index, name='index'),
    path('daftar/', views.daftar_user, name='daftar'),
    path('login/', views.login_user, name='login'),
    path('logout/', views.logout_user, name='logout'),
    path('ganti_password/', views.ganti_password, name='ganti_password'),
    path('create/', views.tabel_create, name='create'),
    path('tabel/', views.tabel_read, name='read'),
    path('edit/<int:id>/', views.tabel_edit, name='update'),
    path('delete/<int:id>/', views.tabel_del, name='delete'),
]