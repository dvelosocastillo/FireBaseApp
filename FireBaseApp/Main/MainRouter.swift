//
//  MainRouter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 04-11-21.
//

import Foundation
import UIKit

class MainRouter: MainRouterProtocol{
    
    var viewController: UIViewController?
    
    static func creteModule() -> MainViewController {
        
            let view = MainViewController.storyboardViewController()
            let interactor = MainInteractor()
            let presenter = MainPresenter()
            let router = MainRouter()
            
            view.presenter = presenter
            interactor.interactorOutput = presenter
            presenter.interactor = interactor
            presenter.router = router
            router.viewController = view
            
            return view
        
    }
    
    func goToLogin() {
        
        let newViewController = LoginRouter.creteModule()
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
        
    }
}
