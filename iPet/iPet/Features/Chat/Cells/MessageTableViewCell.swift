//
//  MessageTableViewCell.swift
//  iPet
//
//  Created by Amanda Hack on 17/03/22.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    static let identifier:String = "MessageTableViewCell"
    
    static func nib()-> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var messageTextLabel: UILabel!
    @IBOutlet weak var horarioTextLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.view.backgroundColor = .systemPink
        self.view.layer.cornerRadius = view.frame.size.height/4
    }
    
}
