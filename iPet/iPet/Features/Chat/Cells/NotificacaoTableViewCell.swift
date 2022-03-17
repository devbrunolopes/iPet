//
//  notificaçãoTableViewCell.swift
//  Tela de notificações
//
//  Created by Amanda Hack on 16/03/22.
//

import UIKit

class NotificacaoTableViewCell: UITableViewCell {
    
    
    static let identifier:String = "NotificacaoTableViewCell"
    static func nib()-> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    
    @IBOutlet weak var viewNotificacaoUIView: UIView!
    @IBOutlet weak var nomePetUILabel: UILabel!
    @IBOutlet weak var nomeMessageUILabel: UILabel!
    @IBOutlet weak var dataMessageUILabel: UILabel!
    @IBOutlet weak var textoMessageUILabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.viewNotificacaoUIView.layer.borderColor = UIColor.lightGray.cgColor
        self.viewNotificacaoUIView.layer.borderWidth = 1
        self.viewNotificacaoUIView.layer.cornerRadius = 6
        
        
    }

}

