//
//  Dog.swift
//  Lesson03
//
//  Created by Thomas Sesselmann on 16/03/2015.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//



class Dog: Animal {
    
    override func prettyAnimalName() -> String {
        return "Dog name: " + self.name
    }
}
