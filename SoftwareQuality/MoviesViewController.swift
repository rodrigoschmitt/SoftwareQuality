//
//  MoviesViewController.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/21/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBAction func showMovies(_ sender: AnyObject) {
        performSegue(withIdentifier: "segueProfiles", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Movies"
    }

}
