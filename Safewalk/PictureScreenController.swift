//
//  PictureScreenController.swift
//  Safewalk
//
//  Created by Yatharth Rawat on 1/17/19.
//  Copyright © 2019 acmsigapp. All rights reserved.
//

import Foundation
import UIKit

class PictureScreenViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var imagePicker: UIImagePickerController!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var takePhoto: UIButton!
    override func viewDidLoad() {
       super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func takePhoto(_ sender: UIButton) {
        if !UIImagePickerController.isSourceTypeAvailable(.camera){
            
            let alertController = UIAlertController.init(title: nil, message: "Device has no camera.", preferredStyle: .alert)
            
            let okAction = UIAlertAction.init(title: "Alright", style: .default, handler: {(alert: UIAlertAction!) in
            })
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            takePhoto.setTitle("Retake Photo", for: .normal)
        }
        else{
        takePhoto.setTitle("Retake Photo", for: .normal)
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.cameraDevice = .front
        present(imagePicker, animated: true, completion: nil)
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
    }
}
