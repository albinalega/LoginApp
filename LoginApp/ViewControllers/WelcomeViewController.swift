//
//  WelcomePageViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 02/10/2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!

    var welcomeUser = ""
    
    private let firstColor = UIColor(
        red: 0/255,
        green: 129/255,
        blue: 64/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 107/255,
        green: 184/255,
        blue: 66/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
        welcomeUserLabel.text = "Welcome, \(welcomeUser)!"
    }
    
}

// MARK: - Background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
