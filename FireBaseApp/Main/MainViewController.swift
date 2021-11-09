//
//  MainViewController.swift
//  FireBaseApp
//
//  Created by daniel veloso on 18-10-21.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    @IBOutlet weak var userMail: UILabel!
    
    var presenter : MainPresenterProtocol?
    
    override func viewDidLoad() {

        presenter?.onViewDidAppear()
        
    }

    @IBAction func backButton(_ sender: UIButton) {
        
        presenter?.onBackButtonPressed()
        
    }
    
}
extension MainViewController: MainViewProtocol {
    
    func set(email: String) {
        
        userMail.text = email
        
    }
}
