//
//  TheatreShowTimings.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 16/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import Foundation

class TheatreShowTimings {
    
    
  var timings = ["9:30AM","12:00PM","2:00PM","5:00PM","6:30PM","9:00PM","11:30PM"]
    var selectedTheatre = ""
    
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
    
    
  convenience  init(name : String ) {
    
    self.init()
    
        for theatre in theatresList {
            if theatre == name {
               selectedTheatre = name
            } else {
                selectedTheatre = "NO Theatre Found"
            }
        }
    }
    
    
    
    
}
