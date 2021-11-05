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
//        if let mail = emailTextField.text, let pass = passwordTextField.text {
//
//
//            Auth.auth().signIn(withEmail: mail, password: pass) { result, error in
//
//                if let e = error {
//                    print(e.localizedDescription)
//
//                } else {
//
//
//
//                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//                    let newViewController = storyBoard.instantiateViewController(withIdentifier: "mainViewController") as! MainViewController
//                    newViewController.modalPresentationStyle = .fullScreen
//
//                    UserDefaults.standard.setValue(true, forKey: "isLoged")
//
//                    self.present(newViewController, animated: true, completion: nil)                }
//            }
//
//        }
        
    }
    
}
