import UIKit

var str = "bienvenido a esta materia \"Desarrollo\" 2021 "
print (str)

let cadenaSalto = "BNienvenido , \n a IOS "
print(cadenaSalto)

func saluda(_ nombre:String){
    print(nombre)
}

saluda("Marco")


var tituloss = [String]()

tituloss.append("nuevacosa")
print(tituloss)


tituloss.insert("titulo 2", at: 1)
print(tituloss)


tituloss += ["3","4","5"]
print(tituloss)

tituloss.remove(at: 4)
print(tituloss)

tituloss.removeFirst()
print(tituloss)

tituloss.removeLast()
print(tituloss)

tituloss.removeAll()
print(tituloss)

struct Cancion {
    let titulo:String
    let artista:String
    let duracion:Int
    var duracionMinutos:String{
        let minutos = duracion / 60
        let segundos = duracion % 60
        return "\(minutos) minutos, \(segundos) segundos"
        
    }
}

let cancion = Cancion (titulo:"El noa noa",artista: "juan gabriel",duracion: 13);
print(cancion)

print(cancion.artista)
print(cancion.duracionMinutos)


let cancion2 = Cancion (titulo:"El noa noa",artista: "juan gabriel",duracion: 180);
print(cancion2.duracionMinutos)

enum desayuno{
    case huevo
    case chilaquiles
    case quesadilla
    func postre(_ decision:Bool) -> String {
        if(decision){
            return "Si"
        }else{
            return "No"
        }
    }
}

let eleccion = desayuno.huevo
print(eleccion)

print(eleccion.postre(true))
