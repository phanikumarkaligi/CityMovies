//
//  CollectionViewCell.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 14/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var label : UILabel!
   
    
    func configureCell(movie : MovieCell) {
        
      imageView.image = UIImage(named: movie.imageName)
      label.text = movie.movieName
    label.textAlignment = NSTextAlignment.Center
    label.textColor = UIColor.whiteColor()
        
    }
    
}
