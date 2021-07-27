//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = 40
        }
    }
    
    
    var user: User!
    override func viewDidLayoutSubviews() {
        imageView.image = UIImage(named: user.person.image)
        view.addVerticalGradientLayer(topColor: view.getPrimaryColor(), bottomColor: view.getSecondaryColor())
    }
    
    

}
