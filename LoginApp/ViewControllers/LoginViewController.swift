//
//  ViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgotUsernameButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgotPasswordButton.titleLabel!.adjustsFontSizeToFitWidth = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        tabBarController.tabBar.barTintColor = .systemYellow
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
        }
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    
    @IBAction func forgotUsernameAction() {
        showAlert(title: "Ooops!", message: "Your username is \(user.username)")
    }
    
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Ooops!", message: "Your password is \(user.password)")
    }
    
    
    @IBAction func loginAction() {
        if usernameTextField.text != user.username || passwordTextField.text != user.password {
            showAlert(title: "Username or password is incorrect", message: "Please, enter correct login and password")
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
}


extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
