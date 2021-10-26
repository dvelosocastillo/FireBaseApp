//
//  SplashViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit

class SplashViewController: UIViewController {
    
   var presenter : SplashPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        
        presenter?.onViewDidAppear()
        
        if UserDefaults.standard.bool(forKey: "isLoged"){
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "mainViewController") as! MainViewController
            newViewController.modalPresentationStyle = .fullScreen
            
        } else {
                
            let storyBoard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
            
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "loginViewController") as! LoginViewController
            newViewController.modalPresentationStyle = .fullScreen
            
        }
        
    }
    
}


extension SplashViewController: SplashViewProtocol{}

