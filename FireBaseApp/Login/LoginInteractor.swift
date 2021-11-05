//
//  LoginInteractor.swift
//  FireBaseApp
//
//  Created by daniel veloso on 02-11-21.
//

import Foundation
import FirebaseAuth

class LoginInteractor: LoginInteractorProtocol{
    
    var interactorOutput: LoginInteractorOutputProtocol?
    
    func performLogin(user: String, pass: String) {
        
        Auth.auth().signIn(withEmail: user, password: pass) { result, error in
            
            if let e = error {
                
                print(e.localizedDescription)
                
                self.interactorOutput?.whenLoginFailure()
                
            } else {
                
                print("Funciona")
                
                self.interactorOutput?.whenLoginSuccess()
            
                
            }
        }
        
    }
}
