//
//  AnimalListView.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
import UIKit
class AnimalListView: ViewController,AnimalListViewProtocol {
    
    @IBOutlet var animalTblView: UITableView!
    
    var presenter:AnimalListPresenterProtocol?
    var animalList = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimalListWireframe.createAnimalListModule(animalListRef: self)
        presenter?.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showAnimals(with animals: [Animal]) {
        animalList = animals
        animalTblView.reloadData()
    }
}

extension AnimalListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTblView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        let animal = animalList[indexPath.row]
        cell.textLabel?.text = animal.name
        cell.detailTextLabel?.text =  animal.type + "\n" + animal.diet
        cell.imageView?.image =  UIImage(named: animal.name)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showAnimalSelection(with: animalList[indexPath.row], from: self)
    }
    
}
