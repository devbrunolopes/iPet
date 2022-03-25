//
//  CadastroVC.swift
//  iPet
//
//  Created by Bruno Lopes on 23/02/22.
//

import UIKit

class CadastroVC: BaseViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var iPetLabel: UILabel!
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkPasswordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var dontHaveAnAccountLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.signUpButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapSignInButton(_ sender: UIButton) {
    }
    
    
}
