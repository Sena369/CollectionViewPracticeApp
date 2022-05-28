//
//  CollectionViewCell.swift
//  CollectionViewPracticeApp
//
//  Created by 澤田世那 on 2022/05/29.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static var identifier: String { String(describing: self)}
    static var nib: UINib { UINib(nibName: String(describing: self), bundle: nil)}

    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodTextLabel: UILabel!
    
    func configure(item: FoodItem) {
        foodTextLabel.text = item.name
        foodImageView.image = item.image
    }
}
