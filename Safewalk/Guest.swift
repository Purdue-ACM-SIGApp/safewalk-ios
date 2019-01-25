//
//  Guest.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/15/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
class Guest: User {
    var name: String?
    var username: String?
    var password: String?
    var location: String
    var phoneNumber: String?
    
    init(name: String, location: String, phoneNumber: String) {
        self.name = name
        self.location = location
        self.phoneNumber = phoneNumber
    }
}
