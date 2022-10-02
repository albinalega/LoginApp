//
//  WelcomePageViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 02/10/2022.
//

import UIKit

final class WelcomePageViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    //var username = "Meow"
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserLabel.text = welcomeUser

    }
    
    

}
