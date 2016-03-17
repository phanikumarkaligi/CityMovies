//
//  ViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 14/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var theatres : UIBarButtonItem!
    @IBOutlet weak var multiplexes : UIBarButtonItem!
    @IBOutlet weak var movies : UIBarButtonItem!
    @IBOutlet weak var menuButton : UIBarButtonItem!
    
    @IBOutlet weak var container1 : UIView!
    @IBOutlet weak var container2 : UIView!
    @IBOutlet weak var container3 : UIView!
    
    
    var theatresList = ["Jagadamba",
        "Sarah AC Theatre",
        "Sri Kanya",
        "See LeelaMahal",
        "Jyoti",
        "SriKanthi",
        "Get & Sangeet",
        "Shri Venateswara",
        "Siri Lakshmi Narasimha",
        "Sukanya",
        "Durga",
        "Moruya",
        "Annapurna",
        "Mohini",
        "Kameshwari",
        "Urvasi",
        "Kanya",
        "Natraj",
        "Lakshmi Kanth"]
    
    var multiplexList = ["VMax",
        "CMR",
        "INOX - chitralaya",
        "Mukuta A2",
        "Jagadamba"]
    
    
    // ths is a static list , if we have any API we can use it to create a dynamic list
    var moviesLatest = ["Movie A","Movie B","Movie C","Movie D","Movie E"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        container1.hidden = false
        container2.hidden = true
        container3.hidden = true
        
        // navigtion bar translucent 
//        self.navigationController?.navigationBar.translucent = true
//        self.navigationController?.navigationBar.backgroundColor = UIColor.clearColor()
 }

    @IBAction func menuButtonTapped(sender : UIBarButtonItem) {
       
        if sender == movies {
            container1.hidden = false
            container2.hidden = true
            container3.hidden = true
        } else if sender == theatres {
            container1.hidden = true
            container2.hidden = false
            container3.hidden = true
        } else if sender == multiplexes {
            container1.hidden = true
            container2.hidden = true
            container3.hidden = false
        }
        
        
        
        
    }
    
    
    
}

