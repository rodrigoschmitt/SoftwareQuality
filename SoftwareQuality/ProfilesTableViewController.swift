//
//  ProfilesTableViewController.swift
//  SoftwareQuality
//
//  Created by Rodrigo Andrade on 1/21/16.
//  Copyright © 2016 Rodrigo Andrade. All rights reserved.
//

import UIKit
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}


class ProfilesTableViewController: UITableViewController {
    
    var profiles: [Profile] = []
    
    func loadData() {
        let profileManager = ProfileManager()
        
        self.profiles = profileManager.getProfiles()
        
        self.profiles.sort { (profileA, profileB) -> Bool in
            return profileA.episode < profileB.episode
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Star Wars"

        self.loadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.profiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
        
        let profile = self.profiles[indexPath.row]

        cell.imgProfile.image = UIImage(named: profile.photo!)
        cell.lblName.text = profile.name!
        cell.lblEpisode.text = profile.episode!

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segueProfileDetail", sender: self.profiles[indexPath.row])
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueProfileDetail" {
            let profileDetailViewController = segue.destination as! ProfileDetailViewController
            profileDetailViewController.profile = sender as! Profile
        }
        
    }

}
