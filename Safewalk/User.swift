//
//  User.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/15/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
protocol User {
    var name: String? { get set }
    var username: String? { get set }
    var password: String? { get set }
    var location: String { get set }
    var phoneNumber: String? { get set }
}
