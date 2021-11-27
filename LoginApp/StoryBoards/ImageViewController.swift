//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    
    var user: User!
    override func viewDidLayoutSubviews() {
        
        imageView.image = UIImage(named: user.person.image)
        fullnameLabel.text = user.person.fullname
        
        gradientView.addVerticalGradientLayer(topColor: gradientView.getPrimaryColor(),
                                            bottomColor: gradientView.getSecondaryColor())
    }
    
}
