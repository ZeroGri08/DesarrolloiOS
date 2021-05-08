//
//  EmpleadosViewController.swift
//  NavigationController-UITableView
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit

class EmpleadosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var nombreEmpleados = ["Hugo Pérez", "Francisco López", "Luis Magaña"]
    var edadesEmpleados = [21,22,23]
    
    var fotosEmpleados:[UIImage] = [
        UIImage(named: "foto1.jpg")!,
        UIImage(named: "foto2.jpg")!,
        UIImage(named: "foto3.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombreEmpleados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = nombreEmpleados[indexPath.row]
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "detalleEmpleadoSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleEmpleadoSegue"
        {
            let idSeleccionado = sender as! Int
            
            let detalleEmpleadoVC:DetallesViewController = segue.destination as! DetallesViewController
            
            detalleEmpleadoVC.nombreRecibido = nombreEmpleados[idSeleccionado]
            detalleEmpleadoVC.edadRecibida = edadesEmpleados[idSeleccionado]
            detalleEmpleadoVC.fotoRecibida = fotosEmpleados[idSeleccionado]
        }
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
