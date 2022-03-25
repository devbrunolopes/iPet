//
//  NotificacaoViewController.swift
//  iPet
//
//  Created by Amanda Hack on 17/03/22.
//

import UIKit

class NotificacaoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView2: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialConfig()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    private func initialConfig(){
        
        self.tableView2.delegate = self
        self.tableView2.dataSource = self
        self.tableView2.register(NotificacaoTableViewCell.nib(), forCellReuseIdentifier: NotificacaoTableViewCell.identifier)
        
        title = "Chat"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:NotificacaoTableViewCell.identifier, for: indexPath) as? NotificacaoTableViewCell
        cell?.nomePetUILabel.text = "FILÓ"
        cell?.nomeMessageUILabel.text = "Maria Luiza"
        cell?.dataMessageUILabel.text = "18/02/1993"
        cell?.textoMessageUILabel.text = "Oi, tudo bem? gostaria de saber mais informações sobre a Jade, tenho inte..."
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "MessageVC", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MessageViewControllerIdentifier")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
