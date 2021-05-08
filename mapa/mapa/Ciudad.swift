//
//  Ciudad.swift
//  mapa
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit
import MapKit

class Ciudad: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    

    var title: String?
    var info: String?
    
    init(titulo:String, coordinate:CLLocationCoordinate2D, info:String) {
        
        self.coordinate = coordinate
        self.title = titulo
        self.info = info
    }
    
    
    
}
