//
//  LocationTracker.swift
//  
//
//  Created by talha heybeci on 18.12.2024.
//

import Foundation
import CoreLocation

public class LocationTracker {
    private var locationManager: CLLocationManager?
    private var isEnabled: Bool = false
    
    public init() {}
    
    public func enableLocationTracking() {
        locationManager = CLLocationManager()
        isEnabled = true
        print("Location tracking enabled")
    }
    
    public func trackLocation() {
        guard isEnabled else {
            print("Location tracking not enabled")
            return
        }
        
        // Simulate location tracking
        print("Location tracked")
    }
}
