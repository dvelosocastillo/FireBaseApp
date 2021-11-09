//
//  MainPresenter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
    
    
    var interactor: MainInteractorProtocol?
    var view: MainViewProtocol?
    var router: MainRouterProtocol?
    
    func onViewDidAppear() {
        
        interactor?.getUserEmail()
        
    }
    
    func onBackButtonPressed() {
        
        interactor?.logoutUser()
    
    }
    
}

extension MainPresenter: MainInteractorOutputProtocol{
    
    func onGetUserEmailDone(with userEmail: String) {
        
        view?.set(email: userEmail)
    }
    func onGetUserEmailFail() {
        
        //
    }
    func onLogOut() {
        
        router?.goToLogin()
    }
    
}
