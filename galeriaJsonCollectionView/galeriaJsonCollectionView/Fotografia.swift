//
//  Fotografia.swift
//  galeriaJsonCollectionView
//
//  Created by Antonio Hernández on 08/05/21.
//

import Foundation

struct Fotografia:Decodable {
    var id:String
    var urls: [String:String]
}
