//
//  main.swift
//  university-student-management-system
//
//  Created by Erik Valencia Cardona on 16/09/26.
//

import Foundation

class Person {
    let name: String
    let age: Int
    
   required init?( name: String, age: Int) {
        if age < 16 { return nil }
        self.name = name
        self.age = age
    }
}


class Student: Person {
    let studentID: String
    let major: String
    
    required init?(name: String, age: Int){
        self.studentID = "UNASSIGNED"
        self.major = "UNASSIGNED"
        
        super.init(name: name, age: age)
    }
    
    init?(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
    }
    
    convenience init?(name: String, studentID: String, major: String){
        self.init(name: name, age: 18, studentID: studentID, major: major)
    }
}


class Professor: Person {
    let faculty: String
    
    init?(name: String, age: Int, faculty: String){
        self.faculty = faculty
        
        super.init(name: name, age: age)
    }
    
    required init?(name:String, age: Int){
        self.faculty = "UNASSIGNED"
        
        super.init(name: name, age: age)
    }
}


struct University {
    let name: String
    let location: String
}
