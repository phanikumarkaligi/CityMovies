//
//  TheatreCollectionViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 14/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class TheatreCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
   
    
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
        return theatresList.count
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as? TheatreCollectionViewCell
        cell?.imageView.image = UIImage(named: "image\(indexPath.row).jpg")
   //     cell?.label.text = movies[indexPath.row]
    
          
        return cell!
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

  
//    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
//        
//        switch kind {
//            
//        case UICollectionElementKindSectionHeader :
//        let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Header", forIndexPath: indexPath) as! UICollectionReusableView
//            headerView.backgroundColor = UIColor.blueColor()
//            return headerView
//            
//        
//        
//        case UICollectionElementKindSectionFooter :
//        let footerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Footer", forIndexPath: indexPath) as! UICollectionReusableView
//        footerView.backgroundColor = UIColor.greenColor()
//        return footerView
//            
//        default:
//            
//            assert(false, "Unexpected element kind")
// }
// }
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
       return UIEdgeInsetsZero
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5.0
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        return CGSizeMake((self.collectionView?.bounds.width)!, 20)
//    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake((self.collectionView?.bounds.width)!, 180)
    }
    
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
    //    let reusableView : UICollectionReusableView?
        
        if kind == UICollectionElementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "header", forIndexPath: indexPath)
        print("hey came in reuseable view method : \(theatresList[indexPath.section])")
        let label = headerView.viewWithTag(100) as? UILabel
        label?.text = theatresList[indexPath.section]
        
          return headerView
        }
        
        
    return UIView() as! UICollectionReusableView
        
        
    }
    
    
    
    
    
    
    
    
}
