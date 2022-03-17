//
//  HomeVC.swift
//  iPet
//
//  Created by Bruno Lopes on 09/03/22.
//

import UIKit

class HomeVC: BaseViewController {
    
    

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var opcoes: [String] = ["Meu Perfil", "Quero Adotar", "Meus Pets Favoritos", "Cadastrar Pet para Doação", "Meus Pets Cadastrados", "Chat"]
    
    var icones: [String] = ["icn_meu_perfil", "icn_quero_adotar", "icn_meus_pets_favoritos", "icn_cadastrar_doacao", "icn_meus_pets_cadastrados", "icn_chat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userImageView.layer.cornerRadius = userImageView.frame.size.height / 2
        
        self.collectionView.register(UINib(nibName: "HomeCell", bundle: nil), forCellWithReuseIdentifier: "HomeCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
    }
    
}

//MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return opcoes.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as? HomeCell
        cell?.featureLabel.text = opcoes[indexPath.row]
        cell?.iconImageView.image = UIImage(named: icones[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let storyboard = UIStoryboard(name: "MeuPerfilVC", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "MeuPerfilVCIdentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
        
        if indexPath.item == 1 {
            let storyboard = UIStoryboard(name: "Detalhe", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "QueroAdotarViewControllerIdentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
        
        if indexPath.item == 2 {
            let storyboard = UIStoryboard(name: "Detalhe", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "FavoritosViewControllerIdentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
        
        if indexPath.item == 3 {
            let storyboard = UIStoryboard(name: "CadastroDoacaoVC", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "CadastroDoacaoVCIdfentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
        
        if indexPath.item == 4 {
            let storyboard = UIStoryboard(name: "Detalhe", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "PetsCadastradosViewControllerIdentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
        
        if indexPath.item == 5 {
            let storyboard = UIStoryboard(name: "MessageVC", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "MessageVCIdentifier")
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
   
}

//MARK: - UICollectionViewDelegateFlowLayout

extension HomeVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width / 2.3 , height: 150)
    }
    
}
