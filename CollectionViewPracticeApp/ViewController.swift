//
//  ViewController.swift
//  CollectionViewPracticeApp
//
//  Created by 澤田世那 on 2022/05/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private var itemList: [FoodItem] = [
        .init(name: "ピザ", image: UIImage(named: "ピザ")!),
        .init(name: "野菜", image: UIImage(named: "ピザ")!),
        .init(name: "和食", image: UIImage(named: "ピザ")!),
        .init(name: "パスタ", image: UIImage(named: "ピザ")!),
        .init(name: "デザート", image: UIImage(named: "ピザ")!),
        .init(name: "飲み物", image: UIImage(named: "ピザ")!),
        .init(name: "お菓子", image: UIImage(named: "ピザ")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.nib, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 150, height: 100)
        collectionView.collectionViewLayout = layout
    }

    @IBOutlet weak var collectionView: UICollectionView!
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.configure(item: itemList[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let nextVC = NextViewController.instanntiate()
        let nav = UINavigationController(rootViewController: nextVC)
        present(nav, animated: true)
//        present(nextVC, animated: true)
    }
}

