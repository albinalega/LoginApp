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
            login: "Meow",
            password: "qwerty",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let animal: String
    
    static func getPerson() -> Person {
        Person(name: "Albina",
               surname: "Lega",
               dateOfBirth: "10.12.1998",
               animal: "🐱"
        )
    }
}
