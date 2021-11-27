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
    
    var user: User!
    override func viewDidLayoutSubviews() {
        imageView.layer.cornerRadius = 20
        imageView.image = UIImage(named: user.person.image)
        fullnameLabel.text = user.person.fullname
    }
}
