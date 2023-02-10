//
//  User.swift
//  LoginApp
//
//  Created by Альбина Лега on 10.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "albinalega",
            password: "alohamora",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    
    let school: MagicSchool

    let photo: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Albina",
            surname: "Lega",
            school: MagicSchool.getSchool(),
            photo: "IMG_6842",
            bio: ""
        )
    }
}

struct MagicSchool {
    let title: String
    let faculty: Faculty
    let animal: Animal
    
    static func getSchool() -> MagicSchool {
        MagicSchool(
            title: "Hogwarts",
            faculty: .gryffindor,
            animal: .cat
        )
    }
}

enum Faculty: String {
    case gryffindor = "Gryffindor"
    case slytherin = "Slytherin"
    case revenclaw = "Ravenclaw"
    case hufflepuff = "Hufflepuff"
}

enum Animal: String {
    case cat = "🐱"
    case owl = "🦉"
    case frog = "🐸"
}
