//
//  ViewController.swift
//  Navigation-Controller-2
//
//  Created by Antonio Hernández on 07/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        let boton = UIButton()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBlue
        
        boton.setTitle("Ir al segundo VC", for: .normal)
        
        boton.backgroundColor = UIColor.white
        
        boton.setTitleColor(.blue, for: .normal)
        
        boton.frame = CGRect(x: 50, y: 50, width: 200, height: 50)
        
        boton.addTarget(self, action: #selector(tapSegundoVC), for: .touchUpInside)
        
        
        view.addSubview(boton)
        
    }

    
    @objc private func tapSegundoVC(){
        let segundoVC = SegundoViewController()
        
        let navVC = UINavigationController(rootViewController: segundoVC)
        
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
        
    }

}

class SegundoViewController : UIViewController{
    
    let boton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        self.title = "Segundo VC"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Regresar", style: .plain, target: self, action: #selector(regresarPrimerVC))
    }
    
    @objc private func regresarPrimerVC(){
      
        dismiss(animated: true, completion: nil)
        
    }
    
}

