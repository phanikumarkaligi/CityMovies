//
//  TimingsViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 16/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class TimingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    
    var theatreShowTiming = TheatreShowTimings()
    
     var timings = ["9:30AM","12:00PM","2:00PM","5:00PM","6:30PM","9:00PM","11:30PM"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let imageVw = UIImageView(frame: CGRectMake(0, 0, tableView.bounds.size.width, tableView.bounds.size.height))
        imageVw.image = UIImage(named: "home_bg.png")
        tableView.backgroundView = imageVw
        
        print(theatreShowTiming.timings)
        print(theatreShowTiming.selectedTheatre)
        // Do any additional setup after loading the view.
    }

    @IBAction func cancelButtonTapped() {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
   // table view datasource methods 
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
    cell.backgroundColor = UIColor.clearColor()
    cell.textLabel?.textColor = UIColor.whiteColor()
    cell.textLabel?.textAlignment = NSTextAlignment.Center
     cell.textLabel?.text = theatreShowTiming.timings[indexPath.row]
    
        
     return cell
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return theatreShowTiming.timings.count
    }
}
