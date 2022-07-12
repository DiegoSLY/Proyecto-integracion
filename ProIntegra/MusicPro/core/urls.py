from django import views
from django.urls import path
from . import views 

urlpatterns = [
    #BASE PAGINA
    path("base/", views.base, name="base"),
    path("", views.index, name="index"),
    #Login Pagina
    path("login/", views.login, name="login"),
    path("logueado/", views.logueado, name="logueado"),
    path("register/", views.register, name="register"),  
    path("registering/", views.registering, name="registering"),
    #info_user
    path("data_user/", views.data_user, name="data_user"),  
    path("updateing/", views.updateing, name="updateing"), 
    path("deleteing/", views.deleteing, name="deleteing"),   
    #Redirecciones
    path("confi_admin/", views.confi_admin, name="confi_admin"),
    
    #VISTAS GENERALES
    #BODEGA
    path("bodega/", views.bodega, name="bodega"), 
    path("bodega_aprueba/", views.bodega_aprueba, name="bodega_aprueba"),
    path("reg_product/", views.reg_producto, name="reg_producto"),
    path("registering_pro/", views.registering_pro, name="registering_pro"),
    path("deleteing_pro/", views.deleteing_pro, name="deleteing_pro"),
    path("updateing_pro/", views.updateing_pro, name="updateing_pro"), 
    #PRODUCTOS
    path("productos/", views.productos, name="productos"),
    #VENDEDOR
    path("vendedor/", views.vendedor, name="vendedor"),
    path("vendedor_aprueba/", views.vendedor_aprueba, name="vendedor_aprueba"),
    path("vendedor_rechaza/", views.vendedor_rechaza, name="vendedor_rechaza"),    
    #VENTAS
    path("ventas/", views.vent, name="vent"),

]
