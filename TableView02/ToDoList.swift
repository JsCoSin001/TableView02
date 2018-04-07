//
//  ViewController.swift
//  TableView02
//
//  Created by Mr. Error on 4/7/18.
//  Copyright © 2018 Mr. Error. All rights reserved.
//

import UIKit

class ToDoList: UITableViewController {
    
    let dataArray = ["First Message","second Message", "thirth Message"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoListViewController", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }


}

