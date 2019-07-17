//
//  CastlePics.swift
//  iOS Workshop App
//
//  Created by Elysia Lock on 7/13/19.
//  Copyright © 2019 Elysia Lock. All rights reserved.
//

import UIKit

struct Item {
    var imageName: String
}
class CastlePics: UIViewController {

    @IBOutlet weak var castleCollectionView: UICollectionView!
    
    var items: [Item] = [Item(imageName: "castle1"),
                         Item(imageName: "castle2"),
                         Item(imageName: "castle3"),
                         Item(imageName: "castle4"),
                         Item(imageName: "castle5"),
                         Item(imageName: "castle6"),
                         Item(imageName: "castle7"),
                         Item(imageName: "castle8"),
                         Item(imageName: "castle9"),
                         Item(imageName: "castle10"),
                         Item(imageName: "castle11"),
                         Item(imageName: "castle12")]
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let cellIdentifier = "CastleCollectionViewCell"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupCollectionViewItemsSize()
    }
    
    private func setupCollectionView() {
        castleCollectionView.delegate = self
        castleCollectionView.dataSource = self
        let nib = UINib(nibName: "CastleCollectionViewCell", bundle: nil)
        castleCollectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    private func setupCollectionViewItemsSize() {
        if collectionViewFlowLayout == nil {
            let numberOfItemsPerRow: CGFloat = 3
            let lineSpacing: CGFloat = 5
            let interItemSpacing: CGFloat = 5
            
            let width = (castleCollectionView.frame.width - (numberOfItemsPerRow - 1) * interItemSpacing) / numberOfItemsPerRow
            let height = width
            
            collectionViewFlowLayout = UICollectionViewFlowLayout()
            
            collectionViewFlowLayout.itemSize = CGSize(width: width, height: height)
            collectionViewFlowLayout.sectionInset = UIEdgeInsets.zero
            collectionViewFlowLayout.scrollDirection = .vertical
            collectionViewFlowLayout.minimumLineSpacing = lineSpacing
            collectionViewFlowLayout.minimumInteritemSpacing = interItemSpacing
            castleCollectionView.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
        }
    }
}

extension CastlePics: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CastleCollectionViewCell

        cell.castleImageView.image = UIImage(named: items[indexPath.item].imageName)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt \(indexPath)")
    }
}
