//
//  ViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 02/10/2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IBOutlets:
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Login parameters:
    var username = "Meow"
    var password = "qwerty"

    // MARK: - Override functions:
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomePageVC = segue.destination as? WelcomePageViewController else { return }
        welcomePageVC.welcomeUser = "Welcome, \(String(describing: userNameTF.text ?? ""))!"
    }

    // MARK: - IBActions:
    @IBAction func logInButtonWasTapped() {
        if userNameTF.text != username || passwordTF.text != password {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is" + username)
    }
    
    @IBAction func forgotPasswordButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is" + password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private functions:
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        passwordTF.text = ""
    }
}


