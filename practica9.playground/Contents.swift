import UIKit

//Variables globales y locales

var variableGlobal: Int = 50

func evaluar(){
    var variableLocal:String
    variableLocal = "Este es un texto de ejemplo"
    print("Global = \(variableGlobal), Local \(variableLocal)")
    
}

evaluar()

class Heroe{
    var nombre:String = ""
    var edad:Int = 0
    var tipo = superPoder()
    
    func saludo() -> String {
        return "Soy un Super Heroe mi nombre es \(nombre)"
    }
    
    func muestraPoder() -> String {
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
    
}

class superPoder{
    var accion:String = ""
}

var objetoHeroe: Heroe = Heroe()

objetoHeroe.nombre = "Thor"

print(objetoHeroe.nombre)

print(objetoHeroe.saludo())

objetoHeroe.tipo.accion = "Volar"

print(objetoHeroe.muestraPoder())

class Persona{
    var nombre:String = ""
    var apellido:String = ""
    var curp:String = ""
    
    func muestraCurp() -> String {
        return "Curp:\(curp)"
    }
}

var objetoPersona:Persona = Persona()

objetoPersona.nombre = "Juan"
objetoPersona.apellido = "Pérez"
objetoPersona.curp = "JUPE675432"

print(objetoPersona.muestraCurp())

class Empleado:Persona{
    var numeroEmpleado:Int
    var puesto:String
    
    init(numeroEmpleado:Int, puesto:String) {
        self.numeroEmpleado = numeroEmpleado
        self.puesto=puesto
    }
    
    func datosEmpleado() -> String {
        var datos:String
        datos = "Número de empleado: " + String(numeroEmpleado) + "\n"
        datos += "Nombre compelto: " + nombre + " " + apellido + "\n"
        datos += "Puesto: " + puesto
        return datos
    }
}

var objetoEmpleado:Empleado = Empleado(numeroEmpleado: 1, puesto: "Director general")

objetoEmpleado.nombre = "Hugo"
objetoEmpleado.apellido = "Sanchez"
objetoEmpleado.curp = "HUSA746552"

print(objetoEmpleado.datosEmpleado())


let esMujer:Bool = false

func revisaGenero(){
    guard esMujer else {
        print("Genero: hombre")
        return
    }
}
revisaGenero()
