//
//  ViewController.swift
//  Autolayout-y-Constraints-3
//
//  Created by Antonio Hernández on 06/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arribaIzquierda = UILabel();
    var arribaDerecha = UILabel();
    var abajoIzquierda = UILabel();
    var abajoDerecha = UILabel();
    
    var arregloConstraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arribaIzquierda.backgroundColor = UIColor.blue
        arribaIzquierda.text = "ARRI"
        arribaIzquierda.textColor = UIColor.black
        arribaIzquierda.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaIzquierda)
        
        let arribaIzquierdaTop = arribaIzquierda.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20)
        
        let arribaIzquierdaLeading = arribaIzquierda.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        
        let arribaIzquierdaWidth = arribaIzquierda.widthAnchor.constraint(equalToConstant: 100)
        
        let arribaIzquierdaHeight = arribaIzquierda.heightAnchor.constraint(equalToConstant: 100)
        
        arregloConstraints.append(contentsOf: [arribaIzquierdaTop, arribaIzquierdaLeading, arribaIzquierdaWidth, arribaIzquierdaHeight])
        
       
        
        arribaDerecha.backgroundColor = UIColor.green
        arribaDerecha.text = "ARRD"
        arribaDerecha.textColor = UIColor.black
        arribaDerecha.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaDerecha)
        
        let arribaDerechaTop = arribaDerecha.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20)
        
        let arribaDerechaTrailing = arribaDerecha.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        
        let arribaDerechaWidth = arribaDerecha.widthAnchor.constraint(equalToConstant: 100)
        
        let arribaDerechaHeight = arribaDerecha.heightAnchor.constraint(equalToConstant: 100)
        
        arregloConstraints.append(contentsOf: [arribaDerechaTop, arribaDerechaTrailing, arribaDerechaWidth, arribaDerechaHeight])
        
        
        
        abajoIzquierda.backgroundColor = UIColor.orange
        abajoIzquierda.text = "ABAI"
        abajoIzquierda.textColor = UIColor.black
        abajoIzquierda.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(abajoIzquierda)
        
        
        let abajoIzquierdaBottom = arribaDerecha.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        
        let abajoIzquierdaLeading = arribaDerecha.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        
        let abajoIzquierdaWidth = arribaDerecha.widthAnchor.constraint(equalToConstant: 100)
        
        let abajoIzquierdaHeight = arribaDerecha.heightAnchor.constraint(equalToConstant: 100)
        
        arregloConstraints.append(contentsOf: [abajoIzquierdaBottom, abajoIzquierdaLeading, abajoIzquierdaWidth, abajoIzquierdaHeight])
        
        
        
        
        abajoDerecha.backgroundColor = UIColor.purple
        abajoDerecha.text = "ABAD"
        abajoDerecha.textColor = UIColor.black
        abajoDerecha.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(abajoDerecha)
        
        let abajoDerechaBottom = arribaDerecha.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        
        let abajoDerechaTrailing = arribaDerecha.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        
        let abajoDerechaWidth = arribaDerecha.widthAnchor.constraint(equalToConstant: 100)
        
        let abajoDerechaHeight = arribaDerecha.heightAnchor.constraint(equalToConstant: 100)
        
        arregloConstraints.append(contentsOf: [abajoDerechaBottom, abajoDerechaTrailing, abajoDerechaWidth, abajoDerechaHeight])
        
        
        NSLayoutConstraint.activate(arregloConstraints)
        // Do any additional setup after loading the view.
    }


}

