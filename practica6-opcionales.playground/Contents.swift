import UIKit

var cadena: String = "This is the way"
var otraCadena: String = ""
var nombre:String

print(cadena)

print(otraCadena)

var nombreOpcional:String?

nombreOpcional = "Soy un opcional"

print("\(nombreOpcional)") //unwrap

var miEntero:Int?
miEntero=50

print(miEntero!)

let diametro:Optional<Int> = 45
print(diametro!)

var regalosNavidad:Int?

regalosNavidad = 10

if regalosNavidad != nil {
    var cantidadRegalos = regalosNavidad!
    print("Llegaron \(cantidadRegalos) regalos de Navidad - Happy")
}
else
{
    print("No llegaron los regalos de Navidad - Sad")
}

var regalosNavidad2021:Int?
regalosNavidad2021 = 5

//Optional binding
if let cantidadRegalos2021 = regalosNavidad2021{
    print("Llegaron \(cantidadRegalos2021) regalos de Navidad - Happy")
    
}
else
{
    print("no llegaron los regalos de Navidad - Sad")
}
//Closure

//Tipo:Character
var signoExclamacion:Character = "G"
signoExclamacion = "!"
print(signoExclamacion)

let grupos:[Character] = ["H","O","L","A","!"]
let gruposCadena = String(grupos)
print(gruposCadena)
print(grupos[0])




