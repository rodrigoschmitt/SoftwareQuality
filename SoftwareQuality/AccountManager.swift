//
//  Account.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/19/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit

class AccountManager: NSObject {
    
    func checkLogin (_ username: String, password: String) -> Bool {
        
        if (username == "rodrigo" && password == "1234") {
            return true
        } else {
            return false
        }
        
        //return (username == "rodrigo" && password == "1234")
    }

}
