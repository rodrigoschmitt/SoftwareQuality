//
//  ViewController.swift
//  BEPiD2016Class01
//
//  Created by Rodrigo Andrade on 1/19/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //Mark - Methods of UIButton (IBAction)
    
    @IBAction func checkLogin(_ sender: UIButton) {
        let accountManager = AccountManager()
        
        if accountManager.checkLogin(self.txtUsername.text!, password: self.txtPassword.text!) {
            dismiss(animated: true, completion: nil)
        } else {
            print("Login failed...")
        }
    }
}

