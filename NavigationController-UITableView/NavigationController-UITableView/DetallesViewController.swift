//
//  DetallesViewController.swift
//  NavigationController-UITableView
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit

class DetallesViewController: UIViewController {
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var edadEmpleado: UILabel!
    @IBOutlet weak var fotoEmpleado: UIImageView!
    
    var nombreRecibido:String?
    var edadRecibida:Int?
    var fotoRecibida = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        titulo.text=nombreRecibido!
        edadEmpleado.text = String(edadRecibida!)
        
        fotoEmpleado.image = fotoRecibida
        // Do any additional setup after loading the view.
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
