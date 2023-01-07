//
//  FirstViewController.swift
//  Auth
//
//  Created by Демьян Горчаков on 07.01.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
//    данные
    let names = ["Ivan","Anton","Sofi","Anna","Jhon"]
    let age = ["20","35","23","30","40"]
    let image = "cactus"
        
    override func viewDidLoad() {
        super.viewDidLoad()
//                                                                   создание таблицы и ее размеров равных самой view
        let tableView = UITableView(frame: view.bounds)
//                                                                   добавление таблицы на View
        self.view.addSubview(tableView)
//                                                                   создание ячейки и её регистрация
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableCell")
        
        tableView.delegate = self
        tableView.dataSource = self
//                                                                    высота ячейки
//        tableView.rowHeight = 100
    }

}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

//                                                                   создание переиспользуемой ячейки
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
//                                                                   вывод данных
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = age[indexPath.row]
        cell.imageView?.image = UIImage(named: image)

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }
}
