import UIKit

var listaNumeros:[Int] = [0,1,2,3,4,5]

var listaNombres:[String] = ["Hugo", "Paco", "Luis"]

print(listaNombres[2])

listaNombres += ["Donald"]

print(listaNombres)

var totalNombres = listaNombres.count

print(totalNombres)

listaNombres.append("Mimi")
print(listaNombres)
