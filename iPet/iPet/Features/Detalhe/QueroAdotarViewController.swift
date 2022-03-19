//
//  QueroAdotarViewController.swift
//  iPet
//
//  Created by Karoline Do Nascimento on 15/03/22.
//

import UIKit

class QueroAdotarViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Quero Adotar"
        
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
        collectionView.delegate = self
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
}

extension QueroAdotarViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PetCollectionViewCellidentifier", for: indexPath) as? PetCollectionViewCell{
            
           return cell
        } else {
            return UICollectionViewCell()
        }
     
    }
}

extension QueroAdotarViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Detalhe", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetalheViewcontrollerIdentifier")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
