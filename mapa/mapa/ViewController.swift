//
//  ViewController.swift
//  mapa
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let londres = Ciudad(titulo: "Londres", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.12775), info: "Capital de Inglaterra")
        let cdmx = Ciudad(titulo: "CDMX", coordinate: CLLocationCoordinate2D(latitude: 19.4978, longitude: -99.1269), info: "Capital de la republica mexicana")
        
        let leon = Ciudad(titulo: "León Gto", coordinate: CLLocationCoordinate2D(latitude: 21.116667, longitude: -101.683334), info: "Capital de Guanajuato")
        
        mapa.addAnnotations([londres, cdmx, leon])
        
    }


}

