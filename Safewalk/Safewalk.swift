//
//  Safewalk.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/15/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
class Safewalk {
    init() {
        
    }
    
    enum status {
        case REQUESTED
        case ACCEPTED
        case INPROGRESS
        case OVER
        case CANCELLED
    }
    
    func eta() -> Int {
        return 0
    }
    
    func getLocation() {
        
    }
}
