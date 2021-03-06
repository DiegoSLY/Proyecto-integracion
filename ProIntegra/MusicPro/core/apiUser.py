from pprint import pprint
import requests
import json


def getAllUsers():
    try:
        url = "https://springbootuser.herokuapp.com/users"
        respuesta = requests.get(url)
        if respuesta.status_code == 200:
            data = respuesta.json()
            pprint(data)
            print(print("se logró" + str(respuesta)))
        else:
            print(print("NO se logró" + str(respuesta)))
        return data
    except Exception as e:
        print(e)


#getAllUsers()

def getUser(id):
    try:
        url = "https://springbootuser.herokuapp.com/user/" + str(id)
        respuesta = requests.get(url)
        if respuesta.status_code == 200:
            print(print("se logró" + str(respuesta)))
            data = respuesta.json()
            print(str(respuesta))
            print(data)
            return data
        else:
            print(print("NO se logró, id no encontrada" + str(respuesta)))

    except Exception as e:
        print(e)


#getUser(1)

def getUserByEmail(email):
    try:
        url = "https://springbootuser.herokuapp.com/users"
        data = False
        respuesta = requests.get(url)
        if respuesta.status_code == 200:
            print(print("se logró" + str(respuesta)))
            data = respuesta.json()
            for i in data:
                if i["email_user"] == email:
                    print("lo encontre")
                    data = i
                    print(data)
                    break
                else:
                    print("NO lo encontre")
                    data = False
                    pprint(data)
        else:
            print(print("NO se logró, id no encontrada" + str(respuesta)))
        return data
    except Exception as e:
        print(e)


#getUserByEmail("Die.conchar@musicpro.com");

def login_user(email, password):
    try:
        url = "https://springbootuser.herokuapp.com/users"
        respuesta = requests.get(url)
        if respuesta.status_code == 200:
            #print(print("se logró" + str(respuesta)))
            data = respuesta.json()

            for i in data:
                # print(i["email_user"])
                if i["email_user"] == email and i["pass_user"] == password:
                    print("lo encontre, usuario logueado")
                    data = i
                    #pprint(data)
                    status = True
                    #print(status)
                    break
                else:
                    print("NO lo encontre, clave o email incorrectos")
                    status = False
                    #pprint(data)
        else:
            print(print("NO se logró, id no encontrada" + str(respuesta)))
        return status
    except Exception as e:
        status = False
        print(e)

#login_user("matias@musicpro.cl", "matias123")

def loadUser(nom_user, rut_user, edad, tipo_user, email_user, pass_user):
    try:
        url = "https://springbootuser.herokuapp.com/load"
        respuesta = False

        if len(rut_user) <= 10:
            dato = {"nom_user": nom_user, "rut_user": rut_user, "edad": edad, "tipo_user": tipo_user,
                    "email_user": email_user, "pass_user": pass_user}
            respuesta = requests.post(url, json=dato)
            if respuesta.status_code == 200:
                print(print("se logró" + str(respuesta)))
                status = True
            else:
                print(print("NO se logró, id no encontrada" + str(respuesta)))
                status = False
        else:
            print("el largo del rut excede el maximo")
    except Exception as e:
        print("No se logró")
        print(e)
        status = False
    return status


#loadUser("hola","20569864-4","32","Bodeguero","hola@musicpro.com","sjaslkjkasd56")

def updateUser(id_user, nom_user, rut_user, edad, tipo_user, email_user, pass_user):
    try:
        url = "https://springbootuser.herokuapp.com/update"
        respuesta = False

        if len(rut_user) <= 10:
            dato = {'id_user': id_user, "nom_user": nom_user, "rut_user": rut_user, "edad": edad,
                    "tipo_user": tipo_user, "email_user": email_user, "pass_user": pass_user}
            respuesta = requests.put(url, json=dato)
            if respuesta.status_code == 200:
                print(print("se logró" + str(respuesta)))
            else:
                print(print("NO se logró, id no encontrada" + str(respuesta)))
        else:
            print("el largo del rut excede el maximo")
    except Exception as e:
        print("No se logró, hubo un error")
        print(e)
        data = False
        pprint(data)
    return respuesta


#getAllUsers()
# updateUser(94,'vanesita','20447641-2',21,'bodeguera','val11e@gmail.com','vane',)
# updateUser(94,'vanesita','20447641-2',23,'vendedora','val11e@gmail.com','vane',)

def delUserById(id):
    try:
        data = getUser(id)
        respuesta = False
        url = "https://springbootuser.herokuapp.com/dUser/" + str(id)
        if id >= 0:
            respuesta = requests.delete(url)
            if respuesta.status_code == 200:
                print("se logró" + str(respuesta) + " eliminste a : " + data["nom_user"])
                print("se logró")
            else:
                print(print("NO se logró, id no encontrada" + str(respuesta)))
        else:
            print("id no encontrada = " + id)

        return respuesta
    except Exception as e:
        print("No se logró, hubo un error")
        print(e)

#delUserById(5)
# getUser(4)
# getAllUsers()


