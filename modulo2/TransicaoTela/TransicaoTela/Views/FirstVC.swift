//
//  ViewController.swift
//  TransicaoTela
//
//  Created by Fabio Makihara on 23/09/20.
//

import UIKit

class FirstVC: UIViewController {

    
    // viewDidLoad -> só carrega a primeira vez que você carrega a View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad first")
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // viewWillDisappear -> aciondo toda vez que a tela sai de cena
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear first")
    }
    
    
    
    // viewDidAppear -> funciona toda vez que a tela aparece
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidiAppear first")
    }
    

    // viewWillAppear -> funciona toda vez que a tela aparece
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear first")
    }
    
}

