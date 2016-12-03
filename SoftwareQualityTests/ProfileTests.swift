//
//  ProfileTests.swift
//  BEPiD2016Class01
//
//  Created by Rodrigo Andrade on 1/21/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import XCTest
@testable import SoftwareQuality

class ProfileTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testProfileManager() {
        
        let profileManager = ProfileManager()
        
        for profile in profileManager.getProfiles() {
            
            XCTAssertNotNil(profile.name, "Profile name is nil!")
            XCTAssertNotNil(profile.episode, "Episode is nil!")
            XCTAssertNotNil(profile.photo, "Profile photo is nil!")
        }
        
    }
    
}
