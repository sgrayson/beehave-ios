//
//  ViewController.swift
//  Beehave App
//
//  Created by Sean Grayson on 2/11/17.
//  Copyright © 2017 Beehave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var labelsContainer: UIView!
    
    @IBOutlet weak var button1: UIImageView!
    
    @IBOutlet weak var button2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.layer.borderWidth = 1
        profileImage.layer.masksToBounds = false
        profileImage.layer.borderColor = UIColor.black.cgColor
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        profileImage.clipsToBounds = true
        
        labelsContainer.layer.borderColor = UIColor.gray.cgColor
        labelsContainer.layer.borderWidth = 1.0
        
        labelsContainer.layer.zPosition = 0.0
        descriptionLabel.layer.zPosition = 1.0
        titleLabel.layer.zPosition = 1.0
        
        button1.layer.borderWidth = 1
        button1.layer.masksToBounds = false
        button1.layer.borderColor = UIColor.black.cgColor
        button1.layer.cornerRadius = profileImage.frame.height/4
        button1.clipsToBounds = true
        
        button2.layer.borderWidth = 1
        button2.layer.masksToBounds = false
        button2.layer.borderColor = UIColor.black.cgColor
        button2.layer.cornerRadius = profileImage.frame.height/4
        button2.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

