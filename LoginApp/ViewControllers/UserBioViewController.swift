//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 10.02.2023.
//

import UIKit

class UserBioViewController: UIViewController {
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.bio
    }
}
