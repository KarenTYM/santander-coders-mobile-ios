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
    
    
    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        /* o que acontece quando eu clico no botão, minha segue está vinculada a uma ViewController (FirstVC)
         --> self.performSegue(withIdentifier:String, sender:Any?)
             - APRESENTA a próxima tela
             - withIdentifier == Identifier da próxima tela
             - sender == o que você quer enviar pra próxima tela    */
        self.performSegue(withIdentifier: "DetailVC", sender: "Oi, meu nome é Karen")
    }
    
    
    /* --> override func prepare(for segue: UIStoryboardSegue, sender: nil)
          - PREPARA as informações da próxima tela, PREPARA a próxima tela
          - devo utilizar quando, ao usar o performSegue(withIdentifier) eu preciso prarar alguma propriedade da próxima tela
          - o método é disparado antes de passar pra próxima tela
          - NÃO é necessário quando a próxima tela já está toda preparada, ex: quando vai mostrar termos e condições, o texto já tá todo pronto       */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /* - tenho que criar essa variável quando eu quero acessar alguma propriedade da próxima tela, no caso, a propriedade que eu to acessando é uma label (myLabel)
          - se fosse só mudar a cor do background da view, não precisaria criar essa variável, porque a propriedade que eu estou acessando é da ViewController   */
        let vc:DetailVC? = segue.destination as? DetailVC
        
        // view --> propriedade de DetailVC -> view = propriedade da ViwController, como DetailVC é filha da ViewController, herda as propriedades
        vc?.view.backgroundColor = .red
        vc?.myLabel.text = sender as? String
    }
    
}


/*  OUTRA FORMA DE ESCREVER O MESMO PROCEDIMENTO
 
 @IBAction func tappedLoginButton(_ sender: UIButton) {
     self.performSegue(withIdentifier: "DetailVC", sender: Any?)
 }
 
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let vc:DetailVC? = segue.destination as? DetailVC

     vc?.view.backgroundColor = .red
     vc?.myLabel.text = "Oi, meu nome é Karen"
 }

- Porém, geralmente recebemos a informação que vai ser passada pra próxima tela antes, então a gente já coloca essa informação no sender da .performSegue(withIdentifier)    */
