//
//  LoginViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
        presenter?.onRegisterButtonPressd()
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {

        if let mail = emailTextField.text, let pass = passwordTextField.text {
        
            presenter?.onLoginButtonPressed(user: mail, pass: pass)
            
        }
        
    }
    
}
