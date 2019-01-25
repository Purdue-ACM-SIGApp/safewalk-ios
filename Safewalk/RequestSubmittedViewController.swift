//
//  RequestSubmittedViewController.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/17/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
import UIKit

class RequestSubmittedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func cancelRequest(_ sender: Any) {
        let alert = UIAlertController(title: "Confirm Cancellation", message: "Are you sure you want to cancel this Safewalk?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
