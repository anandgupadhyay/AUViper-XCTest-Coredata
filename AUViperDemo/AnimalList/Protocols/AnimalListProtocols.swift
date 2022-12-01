//
//  AnimalListProtocols.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
import UIKit

protocol AnimalListViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    func showAnimals(with animals: [Animal])
}

protocol AnimalListPresenterProtocol: AnyObject {
    //View -> Presenter
    var interactor: AnimalListInputInteractorProtocol? {get set}
    var view: AnimalListViewProtocol? {get set}
    var wireframe: AnimalListWireFrameProtocol? {get set}

    func viewDidLoad()
    func showAnimalSelection(with animal: Animal, from view: UIViewController)
}

protocol AnimalListInputInteractorProtocol: AnyObject {
    var presenter: AnimalListOutputInteractorProtocol? {get set}
    //Presenter -> Interactor
    func getAnimalList()
}

protocol AnimalListOutputInteractorProtocol: AnyObject {
    //Interactor -> Presenter
    func animalListDidFetch(animalList: [Animal])
}

protocol AnimalListWireFrameProtocol: AnyObject {
    //Presenter -> Wireframe
    static func createAnimalListModule(animalListRef: AnimalListView)
}
