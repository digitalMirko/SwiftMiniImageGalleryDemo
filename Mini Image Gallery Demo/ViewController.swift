//
//  ViewController.swift
//  Mini Image Gallery Demo
//
//  Created by Mirko Cukich on 10/13/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var largeImage: UIImageView!
    
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var countLbl: UILabel!
    
    @IBOutlet weak var backButtonLabel: UIButton!
    @IBOutlet weak var nextButtonLabel: UIButton!
    
    var imageInt = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageGallery()
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        imageInt -= 1
        self.imageGallery()
       
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        imageInt += 1
        self.imageGallery()
        
    }
    
    
    func imageGallery(){
        
        largeImage.image = UIImage(named: "image\(imageInt)")
        
        countLbl.text = String("\(imageInt)/9")
        
        if imageInt == 1 {
            
            backButtonLabel.isEnabled = false
            backButtonLabel.alpha = 0.5
            
        } else if imageInt == 9 {
            
            nextButtonLabel.isEnabled = false
            nextButtonLabel.alpha = 0.5
            
        } else {
            
            backButtonLabel.isEnabled = true
            backButtonLabel.alpha = 1
            
            nextButtonLabel.isEnabled = true
            nextButtonLabel.alpha = 1
            
        }
        
        switch imageInt {
        case 1:
            locationLbl.text = String("Pyramids of Giza, Egypt")
            break
        case 2:
            locationLbl.text = String("Resident in Cusco, Peru")
            break
        case 3:
            locationLbl.text = String("St Basil's Cathedral in Moscow")
            break
        case 4:
            locationLbl.text = String("Chichén-Itzá, Yucatan, Mexico")
            break
        case 5:
            locationLbl.text = String("Michigan Avenue, Chicago, IL ")
            break
        case 6:
            locationLbl.text = String("La Pedrera, Barcelona, Spain")
            break
        case 7:
            locationLbl.text = String("Tea in the market place")
            break
        case 8:
            locationLbl.text = String("Hatsukaichi, Japan")
            break
        case 9:
            locationLbl.text = String("San Francisco, California")
        default:
            locationLbl.text = String("Location Information")
            break
        }
    }

}

