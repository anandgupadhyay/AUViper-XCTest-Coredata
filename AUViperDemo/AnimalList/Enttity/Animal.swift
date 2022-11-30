//
//  Animal.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation

//enum Diet {
//    case Herbivore
//    case Carnivore
//}
//
//enum AnimalType {
//    case Domestic
//    case Whild
//}


class Animal {
    
    let diet: String!
    let type : String!
    let serialNo : Int!
    var name: String!
    
    init(attributes: [String: Any]) {
        self.name = attributes["name"] as? String
        self.diet = attributes["diet"] as? String
        self.type = attributes["type"] as? String
        self.serialNo = attributes["serialNo"] as? Int
    }
}
