//
//  ViewController.swift
//  jsonFarmacia
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    
    var medicamentos = [Medicamento]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        obtieneJSON {
            print("OK")
            
            self.tabla.reloadData()
            
        }
        
        tabla.delegate = self
        tabla.dataSource = self
        
        

    }
    
    func obtieneJSON(completed: @escaping () -> ()){
        
        let url = URL(string: "https://grupohernandezalba.com/farmacia.json")

        URLSession.shared.dataTask(with: url!) { (data,response,error) in
            
            if error == nil {
                do {
                    print("Entro a do")
                    self.medicamentos = try JSONDecoder().decode([Medicamento].self, from: data!)
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                    
                }
                catch {
                    print("Error al obtener el JSON")
                    print(error)
                }
            }
        }.resume()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return medicamentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        celda.textLabel?.text = medicamentos[indexPath.row].nombre + " (" + medicamentos[indexPath.row].sustancia + ")"
        
        return celda
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        self.performSegue(withIdentifier: "detalleSegue", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalleSegue" {
            
            let idSeleccionado = sender as! Int
            
            let detalleVC:detalleViewController = segue.destination as! detalleViewController
            
            detalleVC.nombreDetalle = medicamentos[idSeleccionado].nombre
            
            detalleVC.dosisDetalle = medicamentos[idSeleccionado].dosis
            
            detalleVC.sustanciaDetalle = medicamentos[idSeleccionado].sustancia
            
            
            let url = URL(string: "https://servidorgha4.com/delta/fotosdeproducto/" +  medicamentos[idSeleccionado].foto)
            
            let data = try? Data(contentsOf: url!)
            
            detalleVC.imagenDetalle = UIImage(data: data!)!
 

        }
        
        
    }


}
