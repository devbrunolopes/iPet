//
//  PicCadastroDoacaoTableViewCell.swift
//  iPet
//
//  Created by Bruno Lopes on 17/03/22.
//

import UIKit

class PicCadastroDoacaoTableViewCell: UITableViewCell {
    
    static let identifier: String = "PicCadastroDoacaoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var addPicLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backView.layer.borderColor = UIColor.lightGray.cgColor
        self.backView.layer.borderWidth = 1
        self.backView.layer.cornerRadius = 6
    }

}
