//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
  
    
    private let primaryColor = UIColor(
        red: 239/255, //0, 201, 255
        green: 78/255,
        blue: 73/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 246/255,
        green: 203/255,
        blue: 196/255,
        alpha: 1

    )
    
    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = self.user
    }
    override func viewDidLoad() {
        title = user.person.fullname
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }

}
