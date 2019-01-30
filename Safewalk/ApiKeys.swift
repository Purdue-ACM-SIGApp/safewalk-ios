//
//  ApiKeys.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/29/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation

// http://www.shanirivers.me/posts/hiding-your-api-keys-for-ios-projects

func valueForAPIKey(keyname: String) -> String {
    let filePath = Bundle.main.path(forResource: "keys", ofType: "pList")
    let plist = NSDictionary(contentsOfFile: filePath!)
    let value:String = plist?.object(forKey: keyname) as! String
    return value
}
