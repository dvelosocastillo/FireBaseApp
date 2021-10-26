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
        
    }
    
    func goToMain() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "mainViewController") as! MainViewController
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
    }
    
    func goToLogin() {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
        
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "loginViewController") as! LoginViewController
        
        newViewController.modalPresentationStyle = .fullScreen
        
        viewController?.present(newViewController, animated: true, completion: nil)
        
    }
    
}
