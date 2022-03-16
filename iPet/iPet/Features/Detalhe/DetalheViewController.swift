//
//  DetalheViewController.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 28/02/22.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var quantidadeDeImagemPageControl: UIPageControl!
    @IBOutlet weak var favoritarButton: UIButton!
    @IBOutlet weak var nomeEIdadeLabel: UILabel!
    @IBOutlet weak var cidadeEstadoEPaísLabel: UILabel!
    @IBOutlet weak var temperamentoLabel: UILabel!
    @IBOutlet weak var castradaEVacinadaLabel: UILabel!
    @IBOutlet weak var filvEFelvLabel: UILabel!
    @IBOutlet weak var vermifugadoLabel: UILabel!
    @IBOutlet weak var sexoLabel: UILabel!
    @IBOutlet weak var raçaLabel: UILabel!
    @IBOutlet weak var porteLabel: UILabel!
    @IBOutlet weak var corLabel: UILabel!
    @IBOutlet weak var chatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func favoritarOuDesfavoritar(_ sender: Any) {
    
    }
    
    @IBAction func iniciarChat(_ sender: Any) {
    
    }
}
