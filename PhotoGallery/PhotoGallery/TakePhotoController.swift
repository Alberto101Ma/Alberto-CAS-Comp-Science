//
//  ViewController.swift
//  PhotoGallery
//
//  Created by Alberto Mancarella on 2/27/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit
import AVFoundation


class TakePhotoController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var takerController: UIImagePickerController!
    var imagesTaken: [UIImage] = []
    
    var currentPhoto: PhotoClass?
    
    @IBOutlet weak var takePhotoButton: UIButton!
    
    
    
    
    @IBOutlet weak var curDescription: UITextView!
    @IBOutlet weak var curPhoto: UIImageView!
    
    @IBOutlet weak var curDate: UILabel!
    

    override func viewDidLoad() {
    
        print(currentPhoto)
        super.viewDidLoad()
    
        
        curDate.text = "\(currentPhoto!.date)"
        curDescription.text = "\(currentPhoto!.description)"
        curPhoto.image = currentPhoto!.photo
        if currentPhoto?.photo == nil{
            takeIt()
        }
               print("lol \(curDescription.text)")
        takePhotoButton.addTarget(self, action: #selector(addButton), for: .touchUpInside)
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .notDetermined: // The user has not yet been asked for camera access.
            AVCaptureDevice.requestAccess(for: .video, completionHandler: {(_) in return})
        default:
            return
        }
        
    
    }

    func takeIt(){
        takerController = UIImagePickerController()
        takerController.delegate = self
        takerController.sourceType = .camera
        present(takerController, animated: true, completion: nil)
        
    }

    @objc func addButton() {
        takeIt()
    }
    
   
    override func viewWillDisappear(_ animated: Bool) {
        currentPhoto?.photo = curPhoto.image
        currentPhoto?.description = curDescription.text!
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo
        info: [UIImagePickerController.InfoKey: Any]) {
        takerController.dismiss(animated: true, completion: nil)
        imageView.image = info[.originalImage] as? UIImage
        let curImage = imageView.image = info[.originalImage] as? UIImage
        imagesTaken.append(imageView.image!)
    }

}






