//
//  AccountTests.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/19/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import XCTest
@testable import SoftwareQuality

class AccountTests: XCTestCase {
    
    let accountManager = AccountManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoginTrue() {
        XCTAssertTrue(accountManager.checkLogin("rodrigo", password: "1234"), "Check login true...")
    }
    
//    func testLoginFalse() {
//        XCTAssertFalse(accountManager.checkLogin("rodrigo", password: "12334"), "Check login false...")
//    }
    
}
