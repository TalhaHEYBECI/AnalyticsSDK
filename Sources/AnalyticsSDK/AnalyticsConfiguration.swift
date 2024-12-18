//
//  AnalyticsConfiguration.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

public struct AnalyticsConfiguration {
    public static var isBasicTrackingEnabled = false
    public static var isLocationTrackingEnabled = false
    
    public static func initialize(withApiKey key: String) {
        #if ANALYTICS_BASIC
        isBasicTrackingEnabled = true
        #endif
        
        #if ANALYTICS_LOCATION
        isLocationTrackingEnabled = true
        #endif
        
        print("SDK initialized with key:", key)
    }
}
