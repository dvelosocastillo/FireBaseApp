//
//  MainPresenter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
    
    var interactor: MainInteractorProtocol?
    var view: MainViewControllerProtocol?
    
    func onViewDidAppear() {
        
        interactor?.getUserEmail()
        
    }
    
    func onBackButtonPressed() {
        
        interactor?.logoutUser()
        
    }
}

extension MainPresenter: MainOutputInteractorProtocol {
    
    func onGetUserEmailDone(with email: String) {
        
        
        
    }
    
}
