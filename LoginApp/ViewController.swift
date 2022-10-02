//
//  ViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 02/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func logInButtonWasTapped() {
        
    }
    @IBAction func forgotUserNameButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is Meow")
    }
    @IBAction func forgotPasswordButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is qwerty")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

