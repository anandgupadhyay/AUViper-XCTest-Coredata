//
//  CoreDataManager.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 01/12/22.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager {
    
    private let modelName: String
    lazy var managedContext: NSManagedObjectContext = self.storeContainer.viewContext

    init(modelName: String){
        self.modelName = modelName
        
        
        if  (retriveAnimals().count == 0) {
            addAnimals()
        }
    }

    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                print("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()


    func saveContext() {
        guard managedContext.hasChanges else { return }
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Unresolved error \(error), \(error.userInfo)")
        }
    }

    func addAnimals(){

        let managedContext  = storeContainer.viewContext
        let iterator = {
            CGFloat((1...255).makeIterator().shuffled().first!)
        }
        for listItem in Common.generateAnimalList(){

            let animalToInsert = Animal(context: managedContext)
            animalToInsert.setValue(listItem["name"], forKeyPath:#keyPath(Animal.name))
            animalToInsert.setValue(listItem["type"], forKeyPath: #keyPath(Animal.type))
            animalToInsert.setValue(listItem["diet"], forKeyPath: #keyPath(Animal.diet))
            animalToInsert.setValue(Int(listItem["serialNo"]!), forKeyPath: #keyPath(Animal.serialNo))
            animalToInsert.setValue(UIColor(displayP3Red: iterator()/255, green: iterator()/255, blue: iterator()/255, alpha: 1), forKeyPath: #keyPath(Animal.color))
        }

        do{
            try managedContext.save()
        }catch {
            print("Save Error:\(error.localizedDescription)")
        }
    }

    public func retriveAnimals() -> [Animal] {
        let animalFetch: NSFetchRequest<Animal> = Animal.fetchRequest()
        let sortByName = NSSortDescriptor(key: #keyPath(Animal.name), ascending: false)
        animalFetch.sortDescriptors = [sortByName]
        do {
            let managedContext = managedContext
            let results = try managedContext.fetch(animalFetch)
            return results
        } catch let error as NSError {
            print("Fetch error: \(error) description: \(error.userInfo)")
        }
        return []
    }


    public func removeAnimal(_ animal: Animal) -> Bool {
        let animalFetch: NSFetchRequest<Animal> = Animal.fetchRequest()
        animalFetch.predicate = NSPredicate(format: "serialNo = %@", animal.serialNo)
        do {
            let result = try managedContext.fetch(animalFetch)
            for objToRemove in result as [NSManagedObject]{
                managedContext.delete(objToRemove)
            }
            do{
                try managedContext.save()
                return true;
            }catch{
                print("Save Error:%@\(error.localizedDescription)")
                return false;
            }
        }catch{
            print("Fetch Error:%@\(error.localizedDescription)")
            return false;
        }
        
    }
    
    public func removeAllAnimals(animalList: [Animal] ) -> Bool{
        
        for animal in animalList{
            managedContext.delete(animal)
        }
        
        do{
            try managedContext.save()
            return true;
        }catch{
            print("Save Error:%@\(error.localizedDescription)")
            return false;
        }
    }
}
