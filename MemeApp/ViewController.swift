//
//  ViewController.swift
//  MemeApp
//
//  Created by Luke  on 7/31/17.
//  Copyright © 2017 Luke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imagePickerView: UIImageView!
    
    // MARK: - Lifecycle Hooks
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - ImagePicker Delegate Functions
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info["UIImagePickerControllerOriginalImage"] as? UIImage {
            print(image)
            self.imagePickerView.image = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
    
    // MARK: - IBActions
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        self.present(imagePickerController, animated: true, completion: nil)
    }
}

