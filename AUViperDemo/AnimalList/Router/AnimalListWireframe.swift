//
//  AnimalListWireframe.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
class AnimalListWireframe: AnimalListWireFrameProtocol {
    
    class func createAnimalListModule(animalListRef: AnimalListView) {
       let presenter: AnimalListPresenterProtocol & AnimalListOutputInteractorProtocol = AnimalListPresenter()
        
        animalListRef.presenter = presenter
        animalListRef.presenter?.wireframe = AnimalListWireframe()
        animalListRef.presenter?.view = animalListRef
        animalListRef.presenter?.interactor = AnimalListInteractor()
        animalListRef.presenter?.interactor?.presenter = presenter
    }
}
