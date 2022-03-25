//
//  ErroVC.swift
//  iPet
//
//  Created by Bruno Lopes on 11/03/22.
//

import UIKit

class ErroVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.initialConfig()
        
    }
    
    private func initialConfig() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(ErrorTableViewCell.nib(), forCellReuseIdentifier: ErrorTableViewCell.identifier)
        self.tableView.isScrollEnabled = false
        self.tableView.separatorStyle = .none
        
    }
   
}

extension ErroVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ErrorTableViewCell.identifier, for: indexPath) as? ErrorTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    
}

extension ErroVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(#function)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 480
    }
    
}
