//
//  RegisterPresenter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation

class RegisterPresenter: RegisterPresenterProtocol {
    
    var router : RegisterRouterProtocol?
    var interactor: RegisterInteractorProtocol?
    
    func onRegisterButtonPressed(user: String, pass: String) {
        
        interactor?.performRegister(user: user, pass: pass)
        
    }
    
    func onBackButtonPressed() {
        
        router?.goToLogin()
        
    }
    
}
extension RegisterPresenter: RegisterInteractorOutputProtocol {
    
    func userRegisterDone() {
        
        router?.goToMain()
    }
}
