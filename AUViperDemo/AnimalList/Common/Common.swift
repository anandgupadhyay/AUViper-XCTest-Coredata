//
//  Common.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
import UIKit
import CoreData

public extension UIColor {
    static var AURed: UIColor { return UIColor(red: 188/255, green: 33/255, blue: 75/255, alpha: 1) }
    static var AURedRedDark: UIColor { return UIColor(red: 158/255, green: 28/255, blue: 64/255, alpha: 1) }
    static var AURedRedVeryDark: UIColor { return UIColor(red: 133/255, green: 22/255, blue: 53/255, alpha: 1) }
}

class NavigationHelper {

    func setNavigationBar(tintColor: UIColor, navController: UINavigationController?, navItem: UINavigationItem) {
        navController?.navigationBar.isTranslucent = false
        navController?.navigationBar.tintColor = tintColor
        navController?.navigationBar.barTintColor = .AURed
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .AURed
            navController?.navigationBar.standardAppearance = appearance
            navController?.navigationBar.scrollEdgeAppearance = appearance
        }
        navController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: tintColor]
        navController?.navigationBar.backItem?.title = ""
        navItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil) // Remove "Back" from Navigation Bar
    }

    func setCustomNavigationTitle(title: String, navItem: UINavigationItem) {
        let titlelabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        titlelabel.text = title
        titlelabel.textColor = .white
        titlelabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        titlelabel.backgroundColor = UIColor.clear
        titlelabel.textAlignment = .center
        navItem.titleView = titlelabel
    }
}

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



