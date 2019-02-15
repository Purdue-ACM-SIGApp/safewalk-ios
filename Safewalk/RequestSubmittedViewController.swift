//
//  RequestSubmittedViewController.swift
//  Safewalk
//
//  Created by Christopher Rosenblatt on 1/17/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
import UIKit
import PlainPing
import Alamofire


class RequestSubmittedViewController: UIViewController {
    @IBOutlet weak var requestSubmitted: UILabel!
    @IBOutlet weak var officer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func cancelRequest(_ sender: Any) {
        let alert = UIAlertController(title: "Confirm Cancellation", message: "Are you sure you want to cancel this Safewalk?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        self.present(alert, animated: true)
        
        PlainPing.ping("safewalk.sigapp.club", completionBlock: {
            (timeElapsed: Double?, error: Error?) in
            
            if let latency = timeElapsed {
                print("latency: \(latency)")
            }
            
            if let error = error {
                print("error: \(error.localizedDescription)")
            }
        })
        
        Alamofire.request("https://safewalk.sigapp.club/actuator/health").responseJSON(completionHandler: { response in
            print(response.request)
            print(response.response)
            print(response.result)
        })
    }
    
    func alertOfficerFound() {
        let alert = UIAlertController(title: "Officer Found!", message: "An officer will be at your location shortly", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func officerFound(time: Int) {
        requestSubmitted.text = ""
        officer.text = "ETA: \(time) Minutes"
    }
}
