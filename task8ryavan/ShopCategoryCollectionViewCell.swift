//
//  ShopCategoryCollectionViewCell.swift
//  task8ryavan
//
//  Created by Ravan on 03.09.24.
//

import UIKit

class ShopCategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var shopCategoryImage: UIImageView!
    @IBOutlet weak var shopCategoryLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    
}
