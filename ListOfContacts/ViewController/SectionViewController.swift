//
//  SectionViewController.swift
//  ListOfContacts
//
//  Created by Artem H on 11/8/24.
//

import UIKit

class SectionViewController: UITableViewController {

    var fullContactInfo: [Contact]!

    override func numberOfSections(in tableView: UITableView) -> Int {
        fullContactInfo.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        fullContactInfo[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "individualContaclCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 1 {
            content.image = UIImage(systemName: "phone.fill")
            content.text = "\(fullContactInfo[indexPath.section].phoneNumber)"
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = "\(fullContactInfo[indexPath.section].email)"
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

