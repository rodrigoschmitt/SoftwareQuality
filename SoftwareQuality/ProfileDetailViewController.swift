//
//  ProfileDetailViewController.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/22/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit

class ProfileDetailViewController: UIViewController {
    
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var profile: Profile!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = profile.episode
        
        self.imgPhoto.image = UIImage(named: profile.photo!)
        self.lblName.text = self.profile.name!
    }

}
