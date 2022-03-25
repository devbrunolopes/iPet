//
//  MeuPerfilCell.swift
//  iPet
//
//  Created by Bruno Lopes on 10/03/22.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    static let identifier: String = "ProfileCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var profilePicImageView: UIImageView!
    @IBOutlet weak var picEditButton: UIButton!
    @IBOutlet weak var personalDateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var birthDateTextField: UITextField!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var sexTextField: UITextField!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationSegmentedPicker: UISegmentedControl!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var changePasswordButton: UIButton!
    @IBOutlet weak var updateButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.profilePicImageView.layer.cornerRadius = profilePicImageView.frame.size.height / 2
        self.updateButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapPicEditButton(_ sender: UIButton) {
    }
    
    @IBAction func didChangeLocationSegmentedPicker(_ sender: UISegmentedControl) {
    }
    
    @IBAction func didTapChangePasswordButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapUpdateButton(_ sender: UIButton) {
    }
    
}
