//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Paritosh Gupta on 18/05/17.
//  Copyright © 2017 Paritosh Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var myInteger = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    func changePicture() {
        if myInteger == 0 {
            imageView.image = UIImage(named: "steve.jpg")
            nameLabel.text = "Steve Jobs"
            myInteger += 1
        } else if myInteger == 1 {
            imageView.image = UIImage(named: "james.jpg")
            nameLabel.text = "James Hetfield"
            myInteger -= 1
        }
    }

}

