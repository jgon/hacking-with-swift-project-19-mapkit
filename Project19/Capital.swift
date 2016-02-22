//
//  Capital.swift
//  Project19
//
//  Created by Jacques on 22/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject,  MKAnnotation {

    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}
