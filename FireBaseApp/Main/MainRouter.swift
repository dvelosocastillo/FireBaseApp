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
            presenter.view = view
            router.viewController = view
        
        
            return view
        
    }
    
    func goToLogin() {
        
        viewController?.dismiss(animated: true)
        
    }
}
