//
//  ErrorTableViewCell.swift
//  iPet
//
//  Created by Bruno Lopes on 25/03/22.
//

import UIKit

class ErrorTableViewCell: UITableViewCell {
    
    static let identifier: String = "ErrorTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var errorImageView: UIImageView!
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cellConfig()
        
    }
    
    private func cellConfig() {
        
        self.backButton.layer.cornerRadius = 7
        
    }
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
    }
     
}
