//
//  LoginViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
           let storyBoard: UIStoryboard = UIStoryboard(name: "Register", bundle: nil)
           
           let newViewController = storyBoard.instantiateViewController(withIdentifier: "registerViewController") as! RegisterViewController
        
        newViewController.modalPresentationStyle = .fullScreen
           
           self.present(newViewController, animated: true, completion: nil)
           
        
    }
    
   // @IBAction func registerButton(_ sender: UIButton) {
        
     
    //}
    
    
    @IBAction func loginButton(_ sender: UIButton) {
    }
    
}
