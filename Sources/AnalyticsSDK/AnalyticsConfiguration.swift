//
//  AnalyticsConfiguration.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

import Foundation

public struct AnalyticsConfiguration {
    public static var isLocationTrackingEnabled = false
    public static var isBasicTrackingEnabled = false
    
    public static func initialize(basicTracking: Bool = false, locationTracking: Bool = false) {
        isBasicTrackingEnabled = basicTracking
        isLocationTrackingEnabled = locationTracking
    }
}
