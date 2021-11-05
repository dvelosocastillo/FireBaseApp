//
//  LoginProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 02-11-21.
//

import Foundation
import UIKit

protocol LoginViewProtocol: AnyObject {}

protocol LoginPresenterProtocol: AnyObject {
    
    func onLoginButtonPressed(user : String, pass : String)
    func onRegisterButtonPressd()
    
}

protocol LoginInteractorProtocol: AnyObject {
    
    func performLogin(user : String, pass : String)
    
}

protocol LoginInteractorOutputProtocol: AnyObject {
    
    func whenLoginSuccess()
    func whenLoginFailure()
    
}

protocol LoginRouterProtocol: AnyObject {
    
    static func creteModule() -> LoginViewController
    func goToMain()
    func goToRegister()
    
}




