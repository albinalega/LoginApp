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
    
    // MARK: - Parametes:


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
        
    }
    
    @IBAction func forgotUserNameButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is Meow")
    }
    
    @IBAction func forgotPasswordButtonWasTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is qwerty")
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
    }

}

