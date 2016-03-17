//
//  MainCollectionViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 14/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"



class MainCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
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
    
    var movies = ["soggade","nanaku prematho","nannku preamtho","joy","Air Lift","Express Raja"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
      let layout = UICollectionViewFlowLayout()
     //   layout.scrollDirection = .Horizontal
          layout.minimumInteritemSpacing = 1.0
          layout.minimumLineSpacing = 1.0
        layout.sectionInset = UIEdgeInsetsMake(1.0, 1.0, 1.0, 1.0)
         layout.itemSize = CGSizeMake((self.collectionView?.bounds.size.width)! / 2.0 - 2.0, 200)
        collectionView?.collectionViewLayout  = layout
        
    }

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
      if let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as? CollectionViewCell
      {
        let movie = MovieCell(imageName: "image\(indexPath.row).jpg", movieName: movies[indexPath.row])
        cell.configureCell(movie)
        return cell
      }
        
       let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as? UICollectionViewCell
        return cell!
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSizeMake((self.collectionView?.bounds.width)!/2.0 - 2.0, 200.0)
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        return UIEdgeInsetsMake(0, 0, 0, 1.0)
//    
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
//        return 1.0
//    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let actionController = UIAlertController(title: "Details About Film", message: "Code Yet not implemented", preferredStyle: UIAlertControllerStyle.Alert)
        let okButtonAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil)
        actionController.addAction(okButtonAction)
        
        presentViewController(actionController, animated: true, completion: nil)
        
        
    }

}
