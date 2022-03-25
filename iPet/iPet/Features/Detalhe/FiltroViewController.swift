//
//  FiltroViewController.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 16/03/22.
//

import UIKit

class FiltroViewController: UIViewController {

    
    @IBOutlet weak var cidadeTextField: UITextField!
    
    @IBOutlet weak var estadoTextField: UITextField!
    
    @IBOutlet weak var racaTextField: UITextField!
    
    @IBOutlet weak var filtrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.filtrarButton.layer.cornerRadius = 7
        
    }

    @IBAction func pressionouLocalizacao(_ sender: Any) {
    }
    
    @IBAction func pressionouSexo(_ sender: Any) {
    }
    
    @IBAction func pressionouIdade(_ sender: Any) {
    }
    
    @IBAction func pressionouPorte(_ sender: Any) {
    }
    
    @IBAction func pressionouCastrado(_ sender: Any) {
    }
    
    @IBAction func pressionouVacinado(_ sender: Any) {
    }
    
    @IBAction func pressionouVermifugado(_ sender: Any) {
    }
    
    @IBAction func filtrarButton(_ sender: Any) {
    }
    
}
