//
//  ViewController.swift
//  10.2_Tables_Interface
//
//  Created by Alexandre Samson on 26.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NameTableViewCell
        cell.nameLabel.text = names[indexPath.row]
        cell.indexLabel.text = "\(indexPath.row)"
        return cell
    }
}

