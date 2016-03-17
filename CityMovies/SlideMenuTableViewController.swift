//
//  SlideMenuTableViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 17/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class SlideMenuTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        
      setupBackground()
    
 }
    
    func setupBackground() {
        
        let imageView = UIImageView(frame: CGRectMake(0,0,view.bounds.size.width, view.bounds.size.height))
        let image = UIImage(named: "slidemenubg.png")
        imageView.image = image
        tableView.backgroundView = imageView
    }

}
