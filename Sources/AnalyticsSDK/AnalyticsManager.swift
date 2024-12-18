//
//  AnalyticsManager.swift
//
//
//  Created by talha heybeci on 18.12.2024.
//

public class AnalyticsManager {
    public static let shared = AnalyticsManager()
    private init() {}
    
    #if ANALYTICS_BASIC
    private lazy var basicTracker = BasicTracker()
    #endif
    
    #if ANALYTICS_LOCATION
    private lazy var locationTracker = LocationTracker()
    #endif
    
    public func initialize(withApiKey key: String) {
        AnalyticsConfiguration.initialize(withApiKey: key)
    }
    
    public func trackEvent(_ event: AnalyticsEvent) {
        #if ANALYTICS_BASIC
        if AnalyticsConfiguration.isBasicTrackingEnabled {
            basicTracker.trackEvent(event.name)
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
    
    public func enableLocationTracking() {
        #if ANALYTICS_LOCATION
        if AnalyticsConfiguration.isLocationTrackingEnabled {
            locationTracker.enableTracking()
        }
        #endif
    }
    
    public func getTrackedEvents() -> [AnalyticsEvent] {
        #if ANALYTICS_BASIC
        if AnalyticsConfiguration.isBasicTrackingEnabled {
            return basicTracker.getTrackedEvents().map {
                AnalyticsEvent(name: $0, parameters: [:])
            }
        }
        #endif
        return []
    }
}
