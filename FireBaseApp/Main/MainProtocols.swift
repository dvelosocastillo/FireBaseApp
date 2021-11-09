//
//  MainProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import UIKit

protocol MainViewProtocol {
    
    func set(email: String)
    
}

protocol MainPresenterProtocol {
    
    func onViewDidAppear()
    func onBackButtonPressed()
}

protocol MainInteractorProtocol {
    
    func getUserEmail()
    func logoutUser()
}

protocol MainInteractorOutputProtocol {
    
    func onGetUserEmailDone(with email: String)
    func onGetUserEmailFail()
    func onLogOut()
    
}

protocol MainRouterProtocol {
    
    static func creteModule() -> MainViewController
    func goToLogin()
    
}


