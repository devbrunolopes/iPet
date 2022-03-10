//
//  MeuPerfilVC.swift
//  iPet
//
//  Created by Bruno Lopes on 10/03/22.
//

import UIKit

class MeuPerfilVC: BaseViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.isNavigationBarHidden = false
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(MeuPerfilCell.nib(), forCellReuseIdentifier: MeuPerfilCell.identifier)
    }
}

extension MeuPerfilVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MeuPerfilCell", for: indexPath) as? MeuPerfilCell

        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }

}
