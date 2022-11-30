//
//  Common.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
class Common: NSObject {
    
    class func generateAnimalList() -> [[String: String]] {
        return [["name": "Tiger", "type": "Wild", "diet":"Carnivore", "serialNo":"1"],
                ["name": "Lion", "type": "Wild", "diet":"Carnivore", "serialNo":"2"],
                ["name": "Horse", "type": "Domestic", "diet":"Herbivore", "serialNo":"3"],
                ["name": "Cow", "type": "Domestic", "diet":"Herbivore", "serialNo":"4"],
                ["name": "Goat", "type": "Domestic", "diet":"Herbivore", "serialNo":"5"],
                ["name": "Cat", "type": "Domestic", "diet":"Omnivore", "serialNo":"6"],
                ["name": "Dog", "type": "Domestic", "diet":"Omnivore", "serialNo":"7"]];
        //["name": "Elephant","type": "Domestic","diet":"Herbivore","serialNo":"8"]
    }
}

/*
 To get build settigns on BUild Phase scripts
 https://stackoverflow.com/questions/18776626/get-current-scheme-name-from-run-script-phase
 
 */
