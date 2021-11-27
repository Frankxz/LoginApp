//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.fullname + "!"
    }
    
}
