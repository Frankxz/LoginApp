//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    var user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = self.user
    }
    override func viewDidLoad() {
        title = user.person.fullname
                view.addVerticalGradientLayer(topColor: view.getPrimaryColor(), bottomColor: view.getSecondaryColor())
    }

}
