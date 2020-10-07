//
//  ResultViewController.swift
//  Demo_Private
//
//  Created by Michael Lin on 8/26/20.
//  Copyright © 2020 Michael Lin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var namePresent: [String]!
    var nameAbsent: [String]!
    
    @IBOutlet weak var presentNamesLabel: UILabel!
    @IBOutlet weak var absentNamesLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func resetCallback(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
