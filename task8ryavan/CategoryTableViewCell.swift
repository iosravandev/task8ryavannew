//
//  CategoryTableViewCell.swift
//  task8ryavan
//
//  Created by Ravan on 01.09.24.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var сollectionView: UICollectionView! {
        didSet {
            let flowLayout = UICollectionViewFlowLayout()
            сollectionView.collectionViewLayout = flowLayout
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 10
            flowLayout.itemSize = CGSize(width: 110 , height: 50 )
            сollectionView.delegate = self
            сollectionView.dataSource = self
            //let nib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
            //сollectionView.register(nib, forCellWithReuseIdentifier: "CategoryCollectionViewCell")
            сollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
            сollectionView.backgroundColor = UIColor.clear
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        contentView.backgroundColor = .clear
    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        
        switch indexPath.item {
        case 0:
            cell.categoryButton.setTitle("All", for: .normal)
            cell.categoryButton.setImage(UIImage(named: "categoryallicon"), for: .normal)
            cell.categoryButton.tintColor = .white
        case 1:
            cell.categoryButton.setTitle("Phones", for: .normal)
            cell.categoryButton.setImage(UIImage(named: "categoryphonesicon"), for: .normal)
            cell.categoryButton.tintColor = .white
        case 2:
            cell.categoryButton.setTitle("Laptops", for: .normal)
            cell.categoryButton.setImage(UIImage(named: "categorylaptopsicon"), for: .normal)
            cell.categoryButton.tintColor = .white
        case 3:
            cell.categoryButton.setTitle("Cameras", for: .normal)
            cell.categoryButton.setImage(UIImage(named: "categorycameraicon"), for: .normal)
            cell.categoryButton.tintColor = .white
        default: break }
        return cell
    }
    
}
