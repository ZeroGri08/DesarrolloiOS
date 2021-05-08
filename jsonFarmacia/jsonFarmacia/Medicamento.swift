//
//  Medicamento.swift
//  jsonFarmacia
//
//  Created by Antonio Hernández on 08/05/21.
//

import Foundation

struct Medicamento:Decodable {
    var nombre: String
    var foto: String
    var dosis: String
    var sustancia: String
}
