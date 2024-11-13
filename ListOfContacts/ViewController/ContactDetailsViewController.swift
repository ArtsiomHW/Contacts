//
//  ContactDetailsViewController.swift
//  ListOfContacts
//
//  Created by Artem H on 11/7/24.
//

import UIKit

final class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contact.fullname
        phoneLabel.text = "Phone number: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"

    }
    
}
