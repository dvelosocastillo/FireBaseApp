//
//  MainInteractor.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import FirebaseAuth

class MainInteractor: MainInteractorProtocol {
    
    var interactorOutput: MainOutputInteractorProtocol?
    
    func getUserEmail() {
        
        if let userEmail = Auth.auth().currentUser?.email {
            
            interactorOutput?.onGetUserEmailDone(with: userEmail)
            
        } else {
            
            //
            
        }
        
    }
    
    func logoutUser() {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        print("Usuario DesLogeado")
        UserDefaults.standard.setValue(false, forKey: "isLoged")
        
    }
    
}
