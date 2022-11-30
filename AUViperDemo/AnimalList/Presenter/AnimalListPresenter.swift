//
//  AnimalListPresenter.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
class AnimalListPresenter: AnimalListPresenterProtocol {
    
    func showAnimalSelection(with animal: Animal, from view: ViewController) {
        
    }
    
    var wireframe: AnimalListWireFrameProtocol?
    weak var view: AnimalListViewProtocol?
    var interactor: AnimalListInputInteractorProtocol?
    
    func viewDidLoad() {
        self.loadAnimalList()
    }

    func loadAnimalList() {
        interactor?.getAnimalList()
    }
}

extension AnimalListPresenter: AnimalListOutputInteractorProtocol {
    
    func animalListDidFetch(animalList: [Animal]) {
        view?.showAnimals(with: animalList)
    }
}
