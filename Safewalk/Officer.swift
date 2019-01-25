//
//  Officer.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/15/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
class Officer: User {
    var name: String?
    var username: String?
    var password: String?
    var phoneNumber: String?
    var location: String
    
    init(location:String) {
        self.location = location
    }
}
