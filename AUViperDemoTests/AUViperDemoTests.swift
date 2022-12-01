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
        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimalsFromCD()
        AppDelegate.sharedAppDelegate.coreDataManaer.removeAllAnimals(animalList: animalList)
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

final class StringExtensionsTests: XCTestCase {
    func testAnimalCount() {
        //add
        AppDelegate.sharedAppDelegate.coreDataManaer.addAnimalsToCD()
        let animalList: [Animal] = AppDelegate.sharedAppDelegate.coreDataManaer.retriveAnimalsFromCD()
        XCTAssert(animalList.count == 0, "Animal List is empty")
    }
    
    func testEmptyListOfUsers() {
        let list: [String] =  ["Tigor", "Lion", "Cow"]
        XCTAssert(list.count == 0)
        XCTAssertTrue(list.users.count == 0)
        XCTAssertEqual(list.users.count, 0)
    }
}
