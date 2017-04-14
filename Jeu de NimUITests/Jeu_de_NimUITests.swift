//
//  Jeu_de_NimUITests.swift
//  Jeu de NimUITests
//
//  Created by Grégoire Jacquin on 19/03/2017.
//  Copyright © 2017 Grégoire Jacquin. All rights reserved.
//

import XCTest

class Jeu_de_NimUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let numberNim = app.staticTexts["number-nim-label"]
        let namePlayer = app.staticTexts["player-label"]
        
        let player1name = "Joueur 1"
        let player2name = "Joueur 2"
        
        XCTAssertEqual(numberNim.label, "20")
        XCTAssertEqual(namePlayer.label, player1name)
        app.buttons["1"].tap()
        XCTAssertEqual(numberNim.label, "19")
        XCTAssertEqual(namePlayer.label, player2name)
        app.buttons["2"].tap()
        XCTAssertEqual(numberNim.label, "17")
        XCTAssertEqual(namePlayer.label, player1name)
        app.buttons["3"].tap()//14
        app.buttons["3"].tap()//11
        app.buttons["3"].tap()//8
        app.buttons["3"].tap()//5
        app.buttons["3"].tap()//2
        app.buttons["1"].tap()//1
        app.buttons["1"].tap()//0
        XCTAssertEqual(numberNim.label, "Le \(player2name) a gagné")
    }
    
}
