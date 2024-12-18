//
//  AnalyticsManager.swift
//
//
//  Created by talha heybeci on 18.12.2024.
//

import Foundation

public class AnalyticsManager {
    public static let shared = AnalyticsManager()
    private init() {}
    
    #if ANALYTICS_BASIC
    private lazy var basicTracker = BasicTracker()
    #endif
    
    #if ANALYTICS_LOCATION
    private lazy var locationTracker = LocationTracker()
    #endif
    
    public func trackEvent(_ event: String) {
        #if ANALYTICS_BASIC
        if AnalyticsConfiguration.isBasicTrackingEnabled {
            basicTracker.trackEvent(event)
        }
        #endif
    }
    
    public func trackLocation() {
        #if ANALYTICS_LOCATION
        if AnalyticsConfiguration.isLocationTrackingEnabled {
            locationTracker.trackLocation()
        }
        #endif
    }
}
