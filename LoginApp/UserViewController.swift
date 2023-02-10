//
//  UserViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 10.02.2023.
//

import UIKit

class UserViewController: UIViewController {
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    
    private let user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user
        name.text = user
        image.image = UIImage(systemName: "cat")
        image.layer.cornerRadius = 
    }
}
