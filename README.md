# Swift University Student Management

A simple Swift practice project to model a University Student Management System and demonstrate initializer patterns in object-oriented design.

## Overview

This project focuses on:

- Designated initializers
- Failable initializers
- Required initializers
- Convenience initializers
- Memberwise initializers (for structs)
- Inheritance and initializer chaining

## Project Structure

- `Person` (base class)
  - Properties: `name`, `age`
  - `required init?` that fails when `age < 16`
- `Student` (inherits from `Person`)
  - Properties: `studentID`, `major`
  - `required init?`
  - custom `init?` with full student data
  - `convenience init?`
- `Professor` (inherits from `Person`)
  - Property: `faculty`
  - custom `init?` calling `super`
  - `required init?` implementation
- `University` (`struct`)
  - Properties: `name`, `location`
  - Uses Swift’s default memberwise initializer

## Learning Goals

Practice how Swift initializes objects and values across classes and structs, including validation, inheritance rules, and initializer delegation.

## Example Usage

```swift
let person = Person(name: "Ana", age: 20)         // valid
let invalidPerson = Person(name: "Luis", age: 14) // nil (failable init)

let studentA = Student(name: "Erik", age: 21, studentID: "S001", major: "CS")
let studentB = Student(name: "Mia", studentID: "S002", major: "Math") // convenience init

let professor = Professor(name: "Dr. Kim", age: 45, faculty: "Engineering")

let university = University(name: "MIT", location: "Cambridge")
