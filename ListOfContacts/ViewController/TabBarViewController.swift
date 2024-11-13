//
//  TabBarViewController.swift
//  ListOfContacts
//
//  Created by Artem H on 11/8/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setVCs()
    }
 
    
    private func setVCs() {
        let contact = Contact.getUniqueContact()
        
        viewControllers?.forEach { viewController in
            if let listVC = viewController as? ListViewController {
                listVC.fullContactInfo = contact
            } else if let sectionVC = viewController as? SectionViewController {
                sectionVC.fullContactInfo = contact
            }
        }

    }
}
