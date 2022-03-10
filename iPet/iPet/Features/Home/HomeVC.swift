//
//  HomeVC.swift
//  iPet
//
//  Created by Bruno Lopes on 09/03/22.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userImageView.layer.cornerRadius = userImageView.frame.size.height / 2
        
        self.collectionView.register(HomeCell.nib(), forCellWithReuseIdentifier: HomeCell.identifier)
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
    }
  
}

//MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.identifier, for: indexPath) as? HomeCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath)")
    }
   
}

//MARK: - UICollectionViewDelegateFlowLayout

extension HomeVC: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width / 2.3 , height: 150)
    }
    
}
