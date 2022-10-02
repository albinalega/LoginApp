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
        
//        setGradientColor(colorOne: .purple, colorTwo: .yellow)
        
 
    }
    
//    func setGradientColor(colorOne: UIColor, colorTwo: UIColor) {
//        let gradient: CAGradientLayer = CAGradientLayer()
//
//        gradient.colors = [colorOne.cgColor, colorTwo.cgColor]
//        gradient.locations = [0.0, 1.0]
//        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
//        gradient.endPoint = CGPoint(x: 0.0, y: 2.0)
//        gradient.frame = view.bounds
//        view.layer.addSublayer(gradient)
//    }
    
}


