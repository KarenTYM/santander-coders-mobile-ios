//
//  SecondVC.swift
//  TransicaoTela
//
//  Created by Fabio Makihara on 23/09/20.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad second")
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // viewWillDisappear -> aciondo toda vez que a tela sai de cena
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear second")
    }
    
    
    
    // viewDidAppear -> funciona toda vez que a tela aparece
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidiAppear second")
    }
    

    // viewWillAppear -> funciona toda vez que a tela aparece
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear second")
    }
    

    @IBAction func clicouVoltarButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
