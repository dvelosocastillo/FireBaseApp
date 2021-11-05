//
//  LoginRouter.swift
//  FireBaseApp
//
//  Created by daniel veloso on 02-11-21.
//

import Foundation
import UIKit

class LoginRouter: LoginRouterProtocol{
    
    var viewController: UIViewController?
    
    static func creteModule() -> LoginViewController {
        
        let view = LoginViewController.storyboardViewController()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        
        view.presenter = presenter
        interactor.interactorOutput = presenter
        presenter.interactor = interactor
        presenter.router = router
        router.viewController = view

        return view
        
    }
    
    func goToMain() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "mainViewController") as! MainViewController
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
        
        
    }
    
    func goToRegister() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Register", bundle: nil)
        
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "registerViewController") as! RegisterViewController
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
        
    }
}
