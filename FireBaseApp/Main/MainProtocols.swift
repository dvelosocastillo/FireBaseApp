//
//  MainProtocols.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import UIKit

protocol MainViewProtocol {}

protocol MainViewControllerProtocol {}

protocol MainPresenterProtocol {
    
    func onViewDidAppear()
    func onBackButtonPressed()
    
}

protocol MainInteractorProtocol {
    
    func getUserEmail()
    func logoutUser()
}

protocol MainOutputInteractorProtocol {
    
    func onGetUserEmailDone(with email: String)
    
}

protocol MainRouterProtocol {
    
    static func creteModule() -> MainViewController
    func goToLogin()
    
}


