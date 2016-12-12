//
//  LoginUITests.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/19/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import XCTest

class LoginUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        XCUIApplication().terminate()
        
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
    
    func testLogin() {
        let app = XCUIApplication()
        app.buttons["Star Wars"].tap()
        app.navigationBars["Star Wars"].buttons["Add"].tap()
        
        let txtusernameTextField = app.textFields["Username"]
        txtusernameTextField.tap()
        txtusernameTextField.typeText("rodrigo")
        
        let txtpasswordSecureTextField = app.secureTextFields["txtPassword"]
        txtpasswordSecureTextField.tap()
        txtpasswordSecureTextField.typeText("1234")
        app.buttons["Login"].tap()
    }
}
