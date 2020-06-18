//
//  ViewController.swift
//  TodoListCoredata
//
//  Created by El nino Cholo on 2020/06/17.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var erickArrays:[String] = ["Find IOS tutorials","Download all videos","Learn Objective-C"]
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let items = defaults.array(forKey: "tololistcoredata") as? [String]
        {
            erickArrays = items
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return erickArrays.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = erickArrays[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(erickArrays[indexPath.row])
        
//        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
    @IBAction func AddButton(_ sender: UIBarButtonItem)
    {
        var textfield = UITextField()
        
        let alert = UIAlertController(title: "Add Item", message: "", preferredStyle: .alert)
        
        let Action = UIAlertAction(title: "Add item", style: UIAlertAction.Style.default) { (action) in
            ////
           self.erickArrays.append(textfield.text!)
            self.defaults.set(self.erickArrays, forKey: "tololistcoredata")
            
            self.tableView.reloadData()
        }
        
            alert.addTextField { (alerttextField) in
            alerttextField.placeholder = "Create new Item"
//            print(alerttextField.text!)
                textfield = alerttextField
                
        }
        
        alert.addAction(Action)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

