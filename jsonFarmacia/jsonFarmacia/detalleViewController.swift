//
//  detalleViewController.swift
//  jsonFarmacia
//
//  Created by Antonio Hernández on 08/05/21.
//


import UIKit

class detalleViewController: UIViewController {


    @IBOutlet weak var imagen: UIImageView!
   
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var dosis: UILabel!
    
 
    @IBOutlet weak var sustancia: UILabel!
    
    
    var nombreDetalle:String?
    var imagenDetalle = UIImage()
    var dosisDetalle:String?
    var sustanciaDetalle:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        nombre.text = nombreDetalle
        imagen.image = imagenDetalle
        dosis.text = dosisDetalle
        sustancia.text = sustanciaDetalle
        
    }
    

    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
