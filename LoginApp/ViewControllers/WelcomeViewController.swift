//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    private let primaryColor = UIColor(
        red: 239/255, //0, 201, 255
        green: 78/255,
        blue: 73/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 255/255,
        green: 78/255,
        blue: 80/255,
        alpha: 0.3
    )
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: view.getPrimaryColor(), bottomColor: view.getSecondaryColor())
        nameLabel.text = user.person.fullname + "!"
    
    }

}
