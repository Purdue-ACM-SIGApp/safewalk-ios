//
//  Student.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/15/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
class Student: User {
    var name: String?
    var username: String?
    var password: String?
    var phoneNumber: String?
    var location: String
    
    init(name: String, username: String, password: String, location: String, phoneNumber: String) {
        self.name = name
        self.username = username
        self.password = password
        self.location = location
        self.phoneNumber = phoneNumber
    }
}
