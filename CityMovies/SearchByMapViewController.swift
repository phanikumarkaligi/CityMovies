//
//  SearchByMapViewController.swift
//  CityMovies
//
//  Created by Deepthi Kaligi on 15/03/2016.
//  Copyright © 2016 MightyDevelopers. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class SearchByMapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var menuButton : UIBarButtonItem!
    @IBOutlet weak var mapView : MKMapView!
    
    var locationManager : CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mapView.region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(17.713747, 83.298696), MKCoordinateSpanMake(10, 10))
        
     setupLocationManager()
        
    
        mapView.region = MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(17.713747, 83.298696), 2000, 2000)
        fillTheAnnotations()
        mapView.delegate = self
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        
        
        
    }

  
   
    func fillTheAnnotations()
   {
    
    let annotation1 = Artwork(title: "Jagadamba", locationName: "Jagadamba Junction", discipline: "RK Beach Road", coordinate: CLLocationCoordinate2DMake(17.712262, 83.302184), imageName : "hotel.jpeg")
    
    let annotation2 = Artwork(title: "Jyoti", locationName: "chitralaya", discipline: "DB Gardens", coordinate: CLLocationCoordinate2DMake(17.712311, 83.301332), imageName : "hotel.jpeg")
    
    let annotation3 = Artwork(title: "See LeelaMahal", locationName: "LeelaMahal Road", discipline: "Jagadamba", coordinate: CLLocationCoordinate2DMake(17.713747, 83.298696), imageName : "hotel.jpeg")
    
    let annotation4 = Artwork(title: "Melody Theatre", locationName: "Near CMR", discipline: "CMR Road", coordinate: CLLocationCoordinate2DMake(17.711322, 83.300521), imageName : "hotel.jpeg")
    
    mapView.addAnnotation(annotation1)
    mapView.addAnnotation(annotation2)
    mapView.addAnnotation(annotation3)
    mapView.addAnnotation(annotation4)
    
  }
    
    
    
//    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
//        if !(annotation is Artwork) {
//            return nil
//        }
//        
//        let reuseId = "test"
//        
//        var anView = mapView.dequeueReusableAnnotationViewWithIdentifier(reuseId)
//        if anView == nil {
//            anView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
//            anView!.canShowCallout = true
//        
//        }
//        else {
//            anView!.annotation = annotation
//            
//        }
//        
//        //Set annotation-specific properties **AFTER**
//        //the view is dequeued or created...
//        
//        let cpa = annotation as! Artwork
//        anView?.leftCalloutAccessoryView = UIImageView(image:UIImage(named:cpa.imageName))
//        anView?.rightCalloutAccessoryView = UIButton(type: UIButtonType.DetailDisclosure)
//        
//        
//        return anView
//    }
    
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        // 1
        let identifier = "Capital"
        
        // 2
        if annotation.isKindOfClass(Artwork.self) {
            // 3
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
            
            if annotationView == nil {
                //4
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView!.canShowCallout = true
                
                // 5
                let btn = UIButton(type: .DetailDisclosure)
                annotationView!.rightCalloutAccessoryView = btn
            } else {
                // 6
                annotationView!.annotation = annotation
            }
            
            return annotationView
        }
        
        // 7
        return nil
    }

    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let capital = view.annotation as! Artwork
        let placeName = capital.title
   //     let placeInfo = capital.info
       
        performSegueWithIdentifier("toTimingsViewController", sender: placeName)
       
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let dvc = segue.destinationViewController as? TimingsViewController
        dvc?.theatreShowTiming = TheatreShowTimings(name: sender as! String)
        
 }
    
    func setupLocationManager() {
        // this is done becoz its using forced unwrapping
      
            
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        
        locationManager.requestWhenInUseAuthorization()
 }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        let location  = newLocation.coordinate
      setTheMapRegionToLocation(location)
    print("new location : \(newLocation)")
        
    }
    
    func setTheMapRegionToLocation(location : CLLocationCoordinate2D) {
        
     let region = MKCoordinateRegionMakeWithDistance(location, 2000, 2000)
     mapView.region = region
        
        
    }
   

}
