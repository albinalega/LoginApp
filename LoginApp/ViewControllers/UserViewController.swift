//
//  UserViewController.swift
//  LoginApp
//
//  Created by Альбина Лега on 10.02.2023.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var image: UIImageView! {
        didSet {
            image.layer.cornerRadius = image.frame.height / 2
        }
    }
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var school: UILabel!
    @IBOutlet var faculty: UILabel!
    @IBOutlet var animal: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addVerticalGradientLayer()
        title = user.person.fullName
        image.image = UIImage(named: user.person.photo)
        name.text = user.person.name
        surname.text = user.person.surname
        school.text = user.person.school.title
        faculty.text = user.person.school.faculty.rawValue
        animal.text = user.person.school.animal.rawValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? UserBioViewController else { return }
        bioVC.user = user
    }
}
