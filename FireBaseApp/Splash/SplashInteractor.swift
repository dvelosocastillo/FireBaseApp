//
//  SplashInteractor.swift
//  FireBaseApp
//
//  Created by daniel veloso on 26-10-21.
//

import Foundation

class SplashInteractor: SplashInteractorProtocol{
    
    var interactorOutput : SplashInteractorOuputProtocol?
    
    func userIsLoged() {
        
        if UserDefaults.standard.bool(forKey: "isLoged") {
            
            interactorOutput?.whenUserIsLoged()
            
        } else {
            
            interactorOutput?.whenUserIsNotLoged()
            
        }
        
    }
    
}
