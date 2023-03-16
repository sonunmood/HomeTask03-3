//
//  ContactsViewController.swift
//  HomeTask03-3
//
//  Created by Sonun on 16/3/23.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet weak var contactTableView: UITableView!
    private var contact: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My contacts"
        contactTableView.dataSource = self
        initData()
        
    }
    
    private func initData () {
        contact = [Person(name: "Mark", phoneNumber: "996708502406", image: "mark"),
                   Person(name: "Black", phoneNumber: "996708200200", image: "black"),
                   Person(name: "Tom", phoneNumber: "996708600600", image: "tom")]
    }
}

extension ContactsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contact[indexPath.row].name
        cell.detailTextLabel?.text = contact[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(named: contact[indexPath.row].image)
        
        return cell
    }
}

struct Person {
    
    var name: String
    var phoneNumber: String
    var image: String
}
