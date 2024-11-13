//
//  DataStore.swift
//  ListOfContacts
//
//  Created by Artem H on 11/5/24.
//

final class DataStore {
    
    static let sharedData = DataStore()
    
    let names = [
        "Skyler",
        "Chris",
        "Alex",
        "Riley",
        "Taylor",
        "Drew",
        "Morgan",
        "Jordan",
        "Casey",
        "Jamie"
    ]
    
    let surnames = [
        "Anderson",
        "Davis",
        "Smith",
        "Thomas",
        "Martinez",
        "Moore",
        "Jackson",
        "Robinson",
        "Williams",
        "Kim"
    ]
    
    let phoneNumbers = [
        "(798) 806-4824",
        "(129) 606-5864",
        "(133) 196-5392",
        "(274) 902-4046",
        "(517) 764-9864",
        "(851) 650-9427",
        "(939) 588-1193",
        "(410) 713-8955",
        "(879) 336-4397",
        "(752) 858-9745"
    ]
    
    let emails = [
        "rqvah.xzeueqt@example.com",
        "rwvqh.ptftxbm@example.com",
        "vqxfl.adcnpry@example.com",
        "oyonq.lqdjdog@example.com",
        "kibgi.jitulij@example.com",
        "ksvaw.ynuldcw@example.com",
        "adsrd.bwftbqm@example.com",
        "euktf.rzmxrhm@example.com",
        "glhrb.vxneymt@example.com",
        "ytflv.rmcnkuv@example.com"
    ]
    
    private init() {}
}
