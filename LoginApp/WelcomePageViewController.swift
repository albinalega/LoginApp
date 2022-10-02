//
//  WelcomePageViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 02/10/2022.
//

import UIKit

final class WelcomePageViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!

    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        welcomeUserLabel.text = welcomeUser
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
}


