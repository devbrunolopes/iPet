//
//  DetalheViewController.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 28/02/22.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var imagesPageControl: UIPageControl!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var nameAndAgeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
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
        
        self.chatButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func favoritarOuDesfavoritar(_ sender: Any) {
    
    }
    
    @IBAction func iniciarChat(_ sender: Any) {
    
    }
}
