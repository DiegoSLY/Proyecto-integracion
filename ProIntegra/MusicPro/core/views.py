from email import message
from django.shortcuts import render, redirect
from core.apiUser import delUserById, getAllUsers, getUserByEmail, loadUser, updateUser, login_user
from django.contrib import messages



def base(request):
    return render(request, 'web/base.html')

def index(request):
    return render(request, 'web/index.html')
    
def informes(request):
    return render(request, 'ingreso/informes.html')    

def bodega(request):
    return render(request, 'products/bodega.html')

def confi_admin(request):
    return render(request, 'ingreso/confi_admin.html')

#PRODUCTOS
def productos(request):
    return render(request, 'products/productos.html')




#REGISTER    
def register(request):
    return render(request, 'ingreso/register.html')
    
def registering(request):
    try:
        nom_user = request.POST["nom_user"]
        rut_user = request.POST["rut_user"]
        edad = request.POST["edad"]
        tipo_user = "Cliente"
        email_user = request.POST["email_user"]
        pass_user = request.POST["pass_user"]

        status = loadUser(nom_user,rut_user,edad,tipo_user,email_user,pass_user)
        if status == True:
            print(status)
            messages.add_message(request=request, level=messages.SUCCESS, message="Registrado con exito : " + nom_user)
            return redirect("login")
        else:
            print(status)
            messages.add_message(request = request, level=messages.ERROR, message="DATOS INCORRECTOS")
            return redirect("register")
    except Exception as e:
        print(e)




#LOGIN
def login(request):
    return render(request, 'ingreso/login.html')

def logueado(request):
    try:
        email_user = request.POST["email_user"]
        pass_user = request.POST["pass_user"]
        print(email_user + pass_user)
        status = login_user(email_user,pass_user)
        if status == True:
            print(status)
            messages.add_message(request=request, level=messages.SUCCESS, message="Logueado con exito : ")
            data = getUserByEmail(email_user)
            if data["tipo_user"] == "Cliente":
                return redirect("index")
            elif data["tipo_user"] == "Bodeguero":
                return redirect("bodega")
            elif data["tipo_user"] == "Vendedor":
                return redirect("index")
            elif data["tipo_user"] == "Administrador":
                return redirect("confi_admin")
            elif data["tipo_user"] == "Contador":
                return redirect("index")
        else:
            print(status)
            messages.add_message(request = request, level=messages.ERROR, message="DATOS INCORRECTOS")
            return redirect("login")
    except Exception as e:
        print(e)    



#ADMINISTRADOR_VISTA
def data_user(request):
    datalen = len(getAllUsers())
    data = getAllUsers()
    dictnom = []
    dictemail = []
    dictrut = []
    dictedad = []
    dicttipo = []
    dictpass = []

    for person in data:
        dictnom.insert(person["id_user"],person["nom_user"])
        dictemail.insert(person["id_user"],person["email_user"])
        dictrut.insert(person["id_user"],person["rut_user"])
        dictedad.insert(person["id_user"],person["edad"])
        dicttipo.insert(person["id_user"],person["tipo_user"])
        dictpass.insert(person["id_user"],person["pass_user"])
    
    context = {
        "data" : data,
        "datalen" : datalen,
        "dictemail" : dictemail,
        "dictrut" : dictrut,
        "dictedad" : dictedad,
        "dicttipo" : dicttipo,
        "dictpass" : dictpass,
        "dictnom" : dictnom,
    }
    

    return render(request, 'ingreso/data_user.html', context)


def deleteing(request):
    id_user = request.POST["id_user"]
    print(id_user)
    delUserById(id_user)
    return redirect("data_user")

def updateing(request):
    
    try:
        if request.method == "POST":
            
            tipo = request.POST["tipo_user"]
            email = request.POST["email_user"] 
            #print(email)
            data = getUserByEmail(email)
            id_user = data["id_user"]
            nom_user = data["nom_user"]
            email
            rut_user= data["rut_user"]
            edad = data["edad"]
            tipo
            pass_user= data["pass_user"]
            #print(id_user,nom_user, rut_user, age_user, tipo, email, pass_user)
            updateUser(id_user,nom_user, rut_user, edad, tipo, email, pass_user)
            return redirect("data_user")
        else:
            print("error desconocido :C")
    except Exception as e:
        print(e)
