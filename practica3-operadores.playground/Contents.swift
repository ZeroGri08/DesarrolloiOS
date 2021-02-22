import UIKit

let tres = 3
let menostres = -tres

print(menostres)

1 == 2

2 != 1

2 > 1

1 < 2

1 >= 1

2 <= 1

let nombre = "Juan"

if nombre == "Juan"{
    print("Hola Juan")
}
else{
    print("No es la persona")
}

//Operador ternario
var edad = 15
var resultado = edad >= 18 ? "Adulto" : "Menor de edad"
print(resultado)


//Rango

var rangoNumeros = 1...10
print(rangoNumeros)

//Switch
let calificacion = 7

switch calificacion {
case 8...10:
    print("Alta")
case 6...7:
    print("Media")
default:
    print("Mala")
}


