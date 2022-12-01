//
//  AnimalListView.swift
//  AUViperDemo
//
//  Created by Anand Upadhyay on 30/11/22.
//

import Foundation
import UIKit

class AnimalListView: UIViewController, AnimalListViewProtocol {
    
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
        cell.detailTextLabel?.text =  animal.type! + "\n" + animal.diet!
        cell.imageView?.image =  UIImage(named: animal.name!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showAnimalSelection(with: animalList[indexPath.row], from: self)
    }
    
    /*
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath)  else { fatalError("xib doesn't exist") }
        cell.contentView.backgroundColor = .AURedVeryDark
    }

    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { fatalError("xib doesn't exist") }
        cell.contentView.backgroundColor = .AURedDark
    }
    
    // Swipe to delete a note
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: nil) { _, _, complete in
            // Remove the note from the CoreData
            AppDelegate.sharedAppDelegate.coreDataManaer.managedContext.delete(animalList[indexPath.row])
            self.animalList.remove(at: indexPath.row)
            // Save Changes
            AppDelegate.sharedAppDelegate.coreDataManaer.saveContext()
            // Remove row from TableView
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            complete(true)
        }
        
        deleteAction.image = UIImage(systemName: "xmark.circle")
        deleteAction.backgroundColor = .AURed
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        configuration.performsFirstActionWithFullSwipe = true
        return configuration
    }
     */
    
}
