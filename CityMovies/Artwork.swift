//
//  Artwork.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 15/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import Foundation
import MapKit

class Artwork : NSObject , MKAnnotation  {
    
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    let imageName : String
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D, imageName : String) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        self.imageName = imageName
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
    
}