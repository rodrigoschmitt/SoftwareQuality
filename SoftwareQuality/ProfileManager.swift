//
//  ProfileManager.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/21/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit

class ProfileManager: NSObject {
    
    func getProfiles() -> [Profile] {
        
        let profileDV = Profile()
        profileDV.name = "Darth Vader"
        profileDV.photo = "darth_vader"
        profileDV.episode = "Episode III"
        
        let profileDM = Profile()
        profileDM.name = "Darth Maul"
        profileDM.photo = "darth_maul"
        profileDM.episode = "Episode I"
        
        let profileKR = Profile()
        profileKR.name = "Kylo Ren"
        profileKR.photo = "kylo_ren"
        profileKR.episode = "Episode VII"
        
        return [profileDV, profileDM, profileKR]
    }

}
