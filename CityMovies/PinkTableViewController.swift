//
//  PinkTableViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 15/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class PinkTableViewController: UIViewController {

    @IBOutlet weak var menuButton : UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

   
}
