//
//  ViewController.swift
//  Project19
//
//  Created by Jacques on 20/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        
        let london = Capital(title: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), info: "Home to the 2012 Summer Olympics.")
        let oslo = Capital(title: "Oslo", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75), info: "Founded over a thousand years ago.")
        let paris = Capital(title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508), info: "Often called the City of Light.")
        let rome = Capital(title: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5), info: "Has a whole country inside it.")
        let washington = Capital(title: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667), info: "Named after George himself.")
        
        mapView.addAnnotations([london, oslo, paris, rome, washington])
    }

    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {

        let dequeueIdentifier = "Capital"
        
        if annotation.isKindOfClass(Capital.self) {
            
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(dequeueIdentifier)
            
            if annotationView == nil {
                
                // Need to create a new annotation view and set detail button.
                
                // Take care to use MKPinAnnotationView instead of MKAnnotationView else no pin will be displayed.
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: dequeueIdentifier)
                annotationView!.canShowCallout = true
                
                let detailButton = UIButton(type: .DetailDisclosure)
                annotationView!.rightCalloutAccessoryView = detailButton
            } else {
                
                // Set annotation to reused annotation view.
                
                annotationView!.annotation = annotation
            }
            return annotationView
        }
        
        // It's not a Capital annotation. Let MapKit handle the event by returning nil.
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        let capital = view.annotation as! Capital
        let capitalTitle = capital.title
        let capitalInfo = capital.info

        let alertController = UIAlertController(title: capitalTitle, message: capitalInfo, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
}

