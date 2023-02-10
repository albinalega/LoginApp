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
    private let user = User.getUser()
    
    // MARK: - Override functions:
    override func viewDidLoad() {
        userNameTF.text = user.login
        passwordTF.text = user.password
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userVC = navigationVC.topViewController
                guard let userVC = userVC as? UserViewController else { return }
                userVC.user = user
                
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    // MARK: - IBActions:
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login)")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private functions:
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


