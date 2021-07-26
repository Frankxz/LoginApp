//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    var username = ""
    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Hello, dear " + username + "!"
    
    }

}
