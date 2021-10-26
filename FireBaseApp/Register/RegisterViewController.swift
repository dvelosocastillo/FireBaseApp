//
//  RegisterViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var emailConfirmTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordConfirmTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerButton(_ sender: UIButton) {
        
        
            
        if let mail = emailTextField.text, let pass = passwordTextField.text {
            
            
            Auth.auth().createUser(withEmail: mail, password: pass) { result, error in
                
                if let e = error {
                    print(e.localizedDescription)
                    
                } else {
                    
                    self.dismiss(animated: true, completion: nil)
                    
                    }
            
        }
        
    }
    
}
    
    @IBAction func backButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}

