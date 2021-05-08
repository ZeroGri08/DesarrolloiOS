//
//  ViewController.swift
//  vistaWeb-1
//
//  Created by Antonio Hernández on 08/05/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var vistaWeb:WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let liga = URL(string: "https://grupohernandezalba.com")!
        vistaWeb.load(URLRequest(url: liga))
        
        vistaWeb.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        vistaWeb = WKWebView()
        
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }


}

