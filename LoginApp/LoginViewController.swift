//
//  ViewController.swift
//  LoginApp
//
//  Created by Robert Miller on 25.07.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    private let user = "Robert"
    private let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgotUsernameButton.titleLabel!.adjustsFontSizeToFitWidth = true
        forgotPasswordButton.titleLabel!.adjustsFontSizeToFitWidth = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTextField.text!
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }

    @IBAction func forgotUsernameAction() {
        showAlert(title: "Ooops!", message: "Your username is Robert")
    }
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Ooops!", message: "Your password is 12345")
    }
    
    @IBAction func loginAction() {
        if usernameTextField.text != user
        || passwordTextField.text != password{
            showAlert(title: "Username or password is incorrect",
                      message: "Please, enter correct login and password")
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
