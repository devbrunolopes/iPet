//
//  LoginVCViewController.swift
//  iPet
//
//  Created by Bruno Lopes on 23/02/22.
//

import UIKit

class LoginVC: BaseViewController {

    @IBOutlet weak var iPetLabel: UILabel!
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var appleButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.signInButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapForgotPasswordButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapSignInButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarIdentifier")
//        UIApplication.shared.keyWindow?.rootViewController = viewController
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapApleeButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarIdentifier")
//        UIApplication.shared.keyWindow?.rootViewController = viewController
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapFacebookButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarIdentifier")
//        UIApplication.shared.keyWindow?.rootViewController = viewController
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapGoogleButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TabBarIdentifier")
//        UIApplication.shared.keyWindow?.rootViewController = viewController
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "CadastroVC", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "CadastroVCIdentifier")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
