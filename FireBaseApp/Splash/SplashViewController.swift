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
        
    }
    
}


extension SplashViewController: SplashViewProtocol{}

