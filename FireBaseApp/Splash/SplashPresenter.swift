//
//  SplashPresenter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 26-10-21.
//

import Foundation

class SplashPresenter: SplashPresenterProtocol {
    
    var router : SplashRouterProtocol?
    var interactor : SplashInteractorProtocol?
    
    func onViewDidAppear() {
        
        interactor?.userIsLoged()
        
    }

}

extension SplashPresenter: SplashInteractorOuputProtocol {
    
    func whenUserIsLoged() {
        router?.goToMain()
    }
    
    func whenUserIsNotLoged() {
        router?.goToLogin()
    }
    
    
    
    
}
