//
//  Animal.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import CoreData
import Foundation
import UIKit

extension Animal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Animal> {
        return NSFetchRequest<Animal>(entityName: "Animal")
    }

    @NSManaged public var diet: String?
    @NSManaged public var name: String?
    @NSManaged public var serialNo: Int64
    @NSManaged public var type: String?
    @NSManaged public var color: UIColor?

}

extension Animal : Identifiable {

}



