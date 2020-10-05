//
//  RollCallViewController.swift
//  Demo_Private
//
//  Created by Michael Lin on 8/26/20.
//  Copyright © 2020 Michael Lin. All rights reserved.
//

import UIKit

class RollCallViewController: UIViewController {
    
    // Top 6 Baby Names of 2019
    let nameList = ["Liam", "Olivia", "Noah", "Emma", "Oliver", "Ava"].shuffled()
    
    var nameToCall: [String]!
    
    var namePresent: [String] = []
    var nameAbsent: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameToCall = nameList
        namePresent = []
        nameAbsent = []
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ResultViewController else { return }
        vc.nameAbsent = self.nameAbsent
        vc.namePresent = self.namePresent
    }
}
