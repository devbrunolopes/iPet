//
//  PetCollectionViewCell.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 15/03/22.
//

import UIKit

class PetCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "PetCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var filoLabel: UILabel!
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var racaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

}
