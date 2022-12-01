//
//  AnimalListInteractor.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
import CoreData
import UIKit

class AnimalListInteractor: AnimalListInputInteractorProtocol {
    
    weak var presenter: AnimalListOutputInteractorProtocol?
    func getAnimalList(){
        presenter?.animalListDidFetch(animalList: AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimalsFromCD())
    }
}
