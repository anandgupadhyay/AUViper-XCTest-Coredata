//
//  AUViperDemoTests.swift
//  AUViperDemoTests
//
//  Created by Anand Upadhyay on 01/12/22.
//

import XCTest
@testable import AUViperDemo

class AUViperDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimals()
//        _ = AppDelegate.sharedAppDelegate.coreDataManaer.removeAllAnimals(animalList: animalList)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}



final class CoreDataManagerTests: XCTestCase {
    func testEmptyAnimalList() {
        //check empty animal list
        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimals()
        XCTAssert(animalList.count != 0, "Animal List is empty")
    }
    
    func testAnimalDeletion() throws {
        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimals()
        let cow = animalList.first {$0.name?.lowercased() == "cow"}
        let deleted = try AppDelegate.sharedAppDelegate.coreDataManaer.removeAnimal(XCTUnwrap(cow))
        XCTAssertEqual(deleted, true,"animal name are not equal")
    }
    
    func testAnimalFetch(){
        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimals()
        let cow = animalList.first {$0.name?.lowercased() == "cow"}

        XCTAssertEqual(cow?.name?.lowercased(), "cow","animal name are not equal")
    }
    
//    func testEmptyListOfUsers() {
//        let list: [String] =  ["Tigor", "Lion", "Cow"]
//        XCTAssert(list.count == 0)
//        XCTAssertTrue(list.count == 0)
//        XCTAssertEqual(list.count, 0)
//    }
}
