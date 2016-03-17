//
//  LoginViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 17/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var loginButton : UIButton!
    @IBOutlet weak var registerButton : UIButton!
    @IBOutlet weak var imageView : UIImageView!
    
    @IBOutlet weak var menuButton : UIBarButtonItem!
    
    var isUserRegistered  = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        loginButton.titleLabel?.text = "Login"
        loginButton.setNeedsDisplay()

    }

    
    @IBAction func registerButtonTapped() {
        
        // can do some registration calls backend here
        
        
    }

  
}
