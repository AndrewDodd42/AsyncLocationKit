//
//  File.swift
//  
//
//  Created by Pavel Grechikhin on 29.10.2022.
//

import Foundation
import CoreLocation

class MockLocationManager: CLLocationManager {
    override var location: CLLocation? {
        return CLLocation(latitude: 100, longitude: 200)
    }
    
    override func requestLocation() {
        delegate?.locationManager?(self, didUpdateLocations: [location!])
    }
}