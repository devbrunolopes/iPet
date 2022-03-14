//
//  CadastroDoacaoVC.swift
//  iPet
//
//  Created by Bruno Lopes on 14/03/22.
//

import UIKit

class CadastroDoacaoVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(CadastroDoacaoTableViewCell.nib(), forCellReuseIdentifier: CadastroDoacaoTableViewCell.identifier)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
  
}

extension CadastroDoacaoVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CadastroDoacaoTableViewCell.identifier, for: indexPath) as? CadastroDoacaoTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 936
    }
     
}
