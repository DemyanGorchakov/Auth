//
//  SecondViewController.swift
//  Auth
//
//  Created by Демьян Горчаков on 07.01.2023.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data = ["user 1", "user 2", "user 3","user 4", "user 5", "user 6"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let userName = data[indexPath.row]
        
        cell.textLabel?.text = userName
        
        return cell
    }

}
