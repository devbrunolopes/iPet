//
//  HomeCell.swift
//  iPet
//
//  Created by Bruno Lopes on 09/03/22.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    static let identifier: String = "HomeCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var featureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.cornerRadius = 15
        
    }

}
