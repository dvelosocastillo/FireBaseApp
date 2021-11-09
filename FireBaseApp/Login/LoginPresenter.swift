//
//  LoginPresenter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 02-11-21.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
    
    var router: LoginRouterProtocol?
    var interactor: LoginInteractorProtocol?
    
    
    func onLoginButtonPressed(user: String, pass: String) {
        
        interactor?.performLogin(user: user, pass: pass)

    }
    
    func onRegisterButtonPressd() {
        
        router?.goToRegister()
    }
    

}

extension LoginPresenter: LoginInteractorOutputProtocol{
    
    func whenLoginSuccess() {
        router?.goToMain()
    }
    
    func whenLoginFailure() {
        //
    }
    
    
    
    
}



