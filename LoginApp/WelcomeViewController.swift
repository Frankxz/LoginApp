//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var username = ""
    
    private let primaryColor = UIColor(
        red: 250/255,
        green: 112/255,
        blue: 154/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 254/255,
        green: 225/255,
        blue: 64/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        label.text = "Hello, dear " + username + "!"
    
    }

}
