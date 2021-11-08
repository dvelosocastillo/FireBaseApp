//
//  SplashRouter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 26-10-21.
//

import Foundation
import UIKit

class SplashRouter: SplashRouterProtocol{
    
    var viewController: UIViewController?
    
    static func creteModule() -> SplashViewController {
        
        let view = SplashViewController.storyboardViewController()
        let interactor = SplashInteractor()
        let presenter = SplashPresenter()
        let router = SplashRouter()
        
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
