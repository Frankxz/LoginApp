//
//  GradientExtenstion.swift
//  LoginApp
//
//  Created by Robert Miller on 27.07.2021.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func getPrimaryColor() -> UIColor {
      UIColor ( red: 253/255, //0, 201, 255
                green: 203/255,
                blue: 133/255,
                alpha: 1 )
    }
  
    func getSecondaryColor() -> UIColor {
        UIColor ( red: 245/255,
                  green: 200/255,
                  blue: 39/255,
                  alpha: 1 )
    }
    
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

