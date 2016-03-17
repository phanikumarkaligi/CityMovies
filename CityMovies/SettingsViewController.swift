//
//  SettingsViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 17/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var menuButton : UIBarButtonItem!
    @IBOutlet weak var tableView : UITableView!
    
    let resourcesArray = ["Share this app","Rate this app","feedback", "Contact us","About us"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      tableView.dataSource = self
        tableView.delegate = self
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
    }

   // MARK: - table view datasource and delegate methods 
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.clearColor()
        cell.imageView?.image = UIImage(named: "\(resourcesArray[indexPath.row]).png")
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = resourcesArray[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
