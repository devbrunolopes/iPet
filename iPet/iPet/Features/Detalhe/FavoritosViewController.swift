//
//  FavoritosViewController.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 15/03/22.
//

import UIKit

class FavoritosViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Pets Favoritos"
        
        let larguraDaCelula = (UIScreen.main.bounds.width / 2) - 3
        let alturaDaCelula = larguraDaCelula
        
        let collectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionViewFlowLayout.itemSize = CGSize(width: larguraDaCelula, height: alturaDaCelula)
        collectionViewFlowLayout.minimumLineSpacing = 6
        collectionViewFlowLayout.minimumInteritemSpacing = 6
        collectionViewFlowLayout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        
        let referenciaPetCollectionViewCell = UINib(nibName: PetCollectionViewCell.identifier, bundle: nil)
        collectionView.register(referenciaPetCollectionViewCell, forCellWithReuseIdentifier: PetCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
}

extension FavoritosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PetCollectionViewCell.identifier, for: indexPath) as? PetCollectionViewCell{
            
           return cell
        } else {
            return UICollectionViewCell()
        }
     
    }
}

extension FavoritosViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Detalhe", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetalheViewcontrollerIdentifier")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
