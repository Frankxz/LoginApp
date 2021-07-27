//
//  User.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            username: "Robert",
            password: "12345",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Robert", surname: "Miller", image: "lazy")
    }
}
