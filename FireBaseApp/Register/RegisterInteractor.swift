//
//  RegisterInteractor.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import FirebaseAuth

class RegisterInteractor: RegisterInteractorProtocol {
    
    //var router: RegisterRouterProtocol?
    var interactorOutput: RegisterInteractorOutputProtocol?
    
    func performRegister(user: String, pass: String) {
        
        Auth.auth().createUser(withEmail: user, password: pass) { result, error in
            
            if let e = error {
                print(e.localizedDescription)
                
                self.interactorOutput?.userRegisterDone()
                
            }
          }
        }
      }

    
    
    

