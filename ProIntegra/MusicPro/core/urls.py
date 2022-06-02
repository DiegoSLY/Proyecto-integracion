from django import views
from django.urls import path
from . import views 

urlpatterns = [
    path("base/", views.base, name="base"),
    path("", views.index, name="index"),
    path("productos/", views.productos, name="productos"),
    path("login/", views.login, name="login"),
    path("logueado/", views.logueado, name="logueado"),
    path("register/", views.register, name="register"),  
    path("registering/", views.registering, name="registering"),
    path("data_user/", views.data_user, name="data_user"),  
    path("updateing/", views.updateing, name="updateing"), 
    path("deleteing/", views.deleteing, name="deleteing"),   
    path("confi_admin/", views.confi_admin, name="confi_admin"),
    path("bodega/", views.bodega, name="bodega"),  
    path("informes/", views.informes, name="informes"),   
]
