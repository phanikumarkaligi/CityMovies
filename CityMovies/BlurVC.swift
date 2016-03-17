//
//  BlurVC.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 17/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class BlurVC: UIViewController {
    
    
    override func viewDidLoad() {
        
        let imageview  = UIImageView(frame: CGRectMake(0, 0, 320, 480))
        imageview.image = UIImage(named: "image2.jpg")
        view.addSubview(imageview)
        
        
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.ExtraLight)
        let visualEffectsView = UIVisualEffectView(effect: blurEffect)
        visualEffectsView.frame.origin  = view.frame.origin
        let size = CGSizeMake(320, 400)
        visualEffectsView.frame.size  = size
        imageview.addSubview(visualEffectsView)
        let label = UILabel(frame: CGRectMake(30,40,100,40))
        label.text = "Hello, World"
        visualEffectsView.addSubview(label)
        
    }
    
   
    

}
