//
//  MainInteractor.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import FirebaseAuth

class MainInteractor: MainInteractorProtocol {
    
    var interactorOutput: MainInteractorOutputProtocol?
    
    func getUserEmail() {
        
        if let userEmail = Auth.auth().currentUser?.email {
            
            interactorOutput?.onGetUserEmailDone(with: userEmail)
            
        } else {
            
            interactorOutput?.onGetUserEmailFail()
            
        }
        
    }
    
    func logoutUser() {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        print("User Logout")
        UserDefaults.standard.setValue(false, forKey: "isLoged")
        
        interactorOutput?.onLogOut()
        
    }
    
}
