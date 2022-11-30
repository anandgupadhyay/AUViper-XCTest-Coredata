//
//  AnimalListInteractor.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
class AnimalListInteractor: AnimalListInputInteractorProtocol {
    
    weak var presenter: AnimalListOutputInteractorProtocol?

    func getAnimalList(){
        presenter?.animalListDidFetch(animalList: getAllAnimalDetail())
    }

    
    func getAllAnimalDetail() -> [Animal] {
        var animalList = [Animal]()
        let allAnimalDetail = Common.generateAnimalList()
        for item in allAnimalDetail {
            animalList.append(Animal(attributes: item))
        }
        return animalList
    }
}
