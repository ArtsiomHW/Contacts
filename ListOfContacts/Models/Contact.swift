//
//  Contact.swift
//  ListOfContacts
//
//  Created by Artem H on 11/5/24.
//

//import Foundation

struct Contact {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getUniqueContact() -> [Contact] {
        
        let uniqueContact = DataStore.sharedData
        let name = uniqueContact.names
        let surname = uniqueContact.surnames
        let phoneNumber = uniqueContact.phoneNumbers
        let email = uniqueContact.emails
        
        let minNumOfIteration = min(
            name.count,
            surname.count,
            phoneNumber.count,
            email.count
        )
        
        var fullContact: [Contact] = []
        var usedCombinations: [[String]] = []
        
        
        while fullContact.count < minNumOfIteration {
            
            while fullContact.count < min(name.count, surname.count, phoneNumber.count, email.count) {
                let randomNameIndex = Int.random(in: 0..<name.count)
                let randomSurnameIndex = Int.random(in: 0..<surname.count)
                let randomPhoneIndex = Int.random(in: 0..<phoneNumber.count)
                let randomEmailIndex = Int.random(in: 0..<email.count)
                
                let newContact = Contact(
                    name: name[randomNameIndex],
                    surname: surname[randomSurnameIndex],
                    phoneNumber: phoneNumber[randomPhoneIndex],
                    email: email[randomEmailIndex]
                )
                
                let combination = [newContact.name, newContact.surname, newContact.phoneNumber, newContact.email]
                
                if !usedCombinations.contains(combination) {
                    usedCombinations.append(combination)
                    fullContact.append(newContact)
                }
            }
            
        }        
        return fullContact
    }
    
}
