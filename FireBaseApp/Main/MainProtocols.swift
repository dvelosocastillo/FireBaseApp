//
//  MainProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation

protocol MainViewControllProtocol {}

protocol MainPresenterProtocol {
    
    func onViewDidAppear ()
    func onBackButtonPressed ()
    
}

protocol MainInteractorProtocol {
    
    func showUsersEmail ()
     
}

protocol MainOutputInteractorProtocol {
    
    func logoutUser ()
    func showUserEmail ()
    
}

protocol MainRouterProtocol {
    
    static func creteModule() -> MainViewController
    func goToLogin()
    
}


