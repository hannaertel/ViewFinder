//
//  NewPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 6/11/19.
//  Copyright © 2019 Apple. All rights reserved.


import UIKit

class NewPhotoViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate  {

    var imagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openCamera(_ sender: Any) {
    imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func openPhotoLibrary(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var newPhoto: UIImageView!
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newPhoto.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var newText: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
