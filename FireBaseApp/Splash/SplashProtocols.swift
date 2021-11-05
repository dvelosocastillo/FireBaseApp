//
//  SplashProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 26-10-21.
//

import Foundation
import UIKit

protocol SplashViewProtocol: AnyObject { }

protocol SplashPresenterProtocol: AnyObject {
    
    func onViewDidAppear()
    
}

protocol SplashInteractorProtocol: AnyObject {
    
    func userIsLoged ()
    
}

protocol SplashInteractorOutputProtocol: AnyObject {
    
    func whenUserIsLoged()
    func whenUserIsNotLoged()
    
}

protocol SplashRouterProtocol: AnyObject {
    
    static func creteModule() -> SplashViewController
    func goToMain()
    func goToLogin()
    
}


