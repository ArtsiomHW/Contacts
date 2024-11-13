//
//  ViewController.swift
//  ListOfContacts
//
//  Created by Artem H on 11/5/24.
//

import UIKit

final class ListViewController: UITableViewController {

    var fullContactInfo: [Contact]!
    
    //MARK: - Table view configuration
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fullContactInfo.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "fullNameCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = fullContactInfo[indexPath.row].fullname
        
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - Navigation configuration
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cellRowIndex = tableView.indexPathForSelectedRow else {return}
        let contactVC = segue.destination as? ContactDetailsViewController
        contactVC?.contact = fullContactInfo[cellRowIndex.row]
    }
  
}

