//
//  FeedbaclViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 17/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit


class FeedbaclViewController: UIViewController {
    
    @IBOutlet weak var menuButton : UIBarButtonItem!
    @IBOutlet weak var textView : UITextView!


    override func viewDidLoad() {
        super.viewDidLoad()
       
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        textView.layer.borderColor = UIColor.greenColor().CGColor
        textView.layer.borderWidth = 1.0

        

    }

   

}
