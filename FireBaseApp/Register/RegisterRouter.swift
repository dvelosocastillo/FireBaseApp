//
//  RegisterRouter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import UIKit

class RegisterRouter: RegisterRouterProtocol{
    
    var viewController: UIViewController?
    
    static func creteModule() -> RegisterViewController {
        
        let view = RegisterViewController.storyboardViewController()
        let interactor = RegisterInteractor()
        let presenter = RegisterPresenter()
        let router = RegisterRouter()
        
        view.presenter = presenter
        interactor.interactorOutput = presenter
        presenter.interactor = interactor
        presenter.router = router
        router.viewController = view

        return view
        
    }
    
    func goToMain() {
        
        let newViewController = MainRouter.creteModule()
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
    }
    
    func goToLogin() {
        
        let newViewController = LoginRouter.creteModule()
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
        
    }
    
}
