//
//  MainViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    @IBOutlet weak var userMail: UILabel!
    

    override func viewDidLoad() {
        
        let userEmail = Auth.auth().currentUser?.email
        
        userMail.text = userEmail
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButton(_ sender: UIButton) {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        print("Usuario DesLogeado")
        dismiss(animated: true, completion: nil)
        
        UserDefaults.standard.setValue(false, forKey: "isLoged")
        
    }
    
}
