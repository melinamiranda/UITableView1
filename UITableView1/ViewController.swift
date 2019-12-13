//
//  ViewController.swift
//  UITableView1
//
//  Created by Melina Miranda on 11/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit


struct Contact {
       var name:String?
       var surname:String?
   }

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var surnamelabel: UILabel!
    
    var contacts = [Contact]()
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        contacts = [
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        Contact.init(name: "Melina", surname: "Miranda"),
        
        ]
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contacts.count
    }


   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
    
    cell.textLabel?.text  = contacts[indexPath.row].surname
//cell.textLabel?.text  = contacts[indexPath.row].surname
          return cell
    }
   
 }

