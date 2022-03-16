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
        
        let referenciaPetCollectionViewCell = UINib(nibName: "PetCollectionViewCell", bundle: nil)
        collectionView.register(referenciaPetCollectionViewCell, forCellWithReuseIdentifier: "PetCollectionViewCellidentifier")
        collectionView.dataSource = self
       
    }
}

extension FavoritosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PetCollectionViewCellidentifier", for: indexPath) as? PetCollectionViewCell{
            
           return cell
        } else {
            return UICollectionViewCell()
        }
     
    }
}
