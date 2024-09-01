//
//  TableViewController.swift
//  task8ryavan
//
//  Created by Ravan on 31.08.24.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableViewHome: UITableView! {
        didSet{
            tableViewHome.delegate = self
            tableViewHome.dataSource = self
            let nib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
            tableViewHome.register(nib, forCellReuseIdentifier: "CategoryTableViewCell")
            tableViewHome.backgroundColor = UIColor.clear
        }
    }
}


extension TableViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    /* func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
     let cell1 = tableViewHome.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell
     
     let cell2 = tableViewHome.dequeueReusableCell(withIdentifier: "ShopCategoryTableViewCell", for: indexPath) as! ShopCategoryTableViewCell
     
     switch indexPath.item {
     case 0:
     return cell1
     case 1:
     return cell2
     default: break }
     
     return cell1
     
     }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Получаем идентификатор ячейки для текущего индекса
        let identifier: String
        switch indexPath.row {
        case 0:
            identifier = "CategoryTableViewCell"
        case 1:
            identifier = "ShopCategoryTableViewCell"
        default:
            identifier = "DefaultCellIdentifier" // используйте идентификатор по умолчанию для других случаев
        }
        
        // Деализируем ячейку с нужным идентификатором
        let cell = tableViewHome.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        // Если вы используете кастомные ячейки, приводим к нужному типу
        
        return cell
    }

    
}
