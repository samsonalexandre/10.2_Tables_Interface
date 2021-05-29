//
//  ViewController.swift
//  10.2_Tables_Interface
//
//  Created by Alexandre Samson on 26.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina", "Alexandre", "Mira", "Daria", "Paulina"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell, let index = tableView.indexPath(for: cell) {
            print("pressed on \(names[index.row])")
        }
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NameTableViewCell
        cell.nameLabel.text = names[indexPath.row]
        cell.indexLabel.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("pressed on \(names[indexPath.row])")
    }
}

