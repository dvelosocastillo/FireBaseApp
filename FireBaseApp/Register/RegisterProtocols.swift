//
//  RegisterProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation

protocol RegisterViewProtocol {}

protocol RegisterPresenterProtocol{
    
    func onRegisterButtonPressed (user : String, pass : String)
    func onBackButtonPressed ()

}

protocol RegisterInteractorProtocol{
    
    func performRegister (user : String, pass : String)
    
}

protocol RegisterInteractorOutputProtocol{
    
    func userRegisterDone ()
    
}

protocol RegisterRouterProtocol{
    
    static func creteModule() -> RegisterViewController
    func goToMain()
    func goToLogin()
    
}


