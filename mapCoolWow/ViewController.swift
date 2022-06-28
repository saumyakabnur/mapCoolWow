//
//  ViewController.swift
//  mapCoolWow
//
//  Created by Scholar on 6/28/22.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        // Do any additional setup after loading the view.
        
        //set the intial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 29.700640, longitude: -95.652690)
       
        //add a map pin
        let sourcePlaceMark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
       
        //let sourceMapItem = MKMapItem(placemark: sourcePlaceMark)
        //label the map pin
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Mission Bend Animal Clinic"
        
        
        if let location = sourcePlaceMark.location {
            sourceAnnotation.coordinate = location.coordinate
        }
       
        //show region of choice
        self.mapView.showAnnotations([sourceAnnotation], animated: true)
    }


}

