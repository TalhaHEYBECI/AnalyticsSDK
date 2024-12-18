//
//  AnalyticsManager.swift
//
//
//  Created by talha heybeci on 18.12.2024.
//

import Foundation

public class AnalyticsManager {
    public static let shared = AnalyticsManager()
    
    // Optional Dependencies
    private var locationTracker: LocationTracker?
    
    // Properties
    private var apiKey: String?
    private var isInitialized: Bool = false
    private var events: [AnalyticsEvent] = []
    
    private init() {}
    
    // MARK: - Public Methods
    public func initialize(withApiKey key: String) {
        self.apiKey = key
        self.isInitialized = true
        print("AnalyticsSDK initialized with key: \(key)")
    }
    
    public func trackEvent(_ event: AnalyticsEvent) {
        guard isInitialized else {
            print("Error: AnalyticsSDK not initialized")
            return
        }
        
        events.append(event)
        print("Event tracked: \(event.name)")
        print("Parameters: \(event.parameters)")
        print("Timestamp: \(event.timestamp)")
    }
    
    // MARK: - Location Tracking
    public func enableLocationTracking() {
        locationTracker = LocationTracker()
        locationTracker?.enableLocationTracking()
    }
    
    public func trackLocation() {
        locationTracker?.trackLocation()
    }
    
    // MARK: - Debug Methods
    public func getTrackedEvents() -> [AnalyticsEvent] {
        return events
    }
}
