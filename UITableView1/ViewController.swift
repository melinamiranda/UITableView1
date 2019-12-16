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
    var TitleTableView:String?
   }

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var surnamelabel: UILabel!
    @IBOutlet weak var TitleTableView: UILabel!
    
    
    
    @IBAction func ButtonContacts(_ sender: UIButton) {
    }
    
    var contacts = [Contact]()
    
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        contacts = [
        Contact.init(name: "Julieta", surname: "Delaven"),
        Contact.init(name: "Mario", surname: "Miranda"),
        Contact.init(name: "Diego", surname: "Dia"),
        Contact.init(name: "Facundo", surname: "Fernandez"),
        Contact.init(name: "Guido", surname: "Juarez"),
        Contact.init(name: "Mariano", surname: "Ferreyra"),
        Contact.init(name: "Gaston", surname: "Rodriguez"),
        Contact.init(name: "Liliana", surname: "Perez"),
        Contact.init(name: "Ramiro", surname: "Lopez"),
        Contact.init(name: "Julieta", surname: "Delaven"),
        Contact.init(name: "Mario", surname: "Miranda"),
        Contact.init(name: "Diego", surname: "Dia"),
        Contact.init(name: "Facundo", surname: "Fernandez"),
        Contact.init(name: "Guido", surname: "Juarez"),
        Contact.init(name: "Mariano", surname: "Ferreyra"),
        Contact.init(name: "Gaston", surname: "Rodriguez"),
        Contact.init(name: "Liliana", surname: "Perez"),
        Contact.init(name: "Ramiro", surname: "Lopez"),
        Contact.init(name: "Julieta", surname: "Delaven"),
        Contact.init(name: "Mario", surname: "Miranda"),
        Contact.init(name: "Diego", surname: "Dia"),
        Contact.init(name: "Facundo", surname: "Fernandez"),
        Contact.init(name: "Guido", surname: "Juarez"),
        Contact.init(name: "Mariano", surname: "Ferreyra"),
        Contact.init(name: "Gaston", surname: "Rodriguez"),
        Contact.init(name: "Liliana", surname: "Perez"),
        Contact.init(name: "Ramiro", surname: "Lopez"),


        


        ]
      
        
       // tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contacts.count
    }


   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
    if cell == nil {
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "MyCell")
    }
    cell?.textLabel?.text  = contacts[indexPath.row].name
    cell?.detailTextLabel?.text  = contacts[indexPath.row].surname

    cell?.backgroundColor = UIColor.lightGray
    cell?.textLabel?.textColor = UIColor.black
    
    return cell!
    
     
}

}
