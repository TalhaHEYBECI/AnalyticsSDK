//
//  BasicTracker.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

#if ANALYTICS_BASIC
class BasicTracker {
    func trackEvent(_ event: String) {
        print("Basic tracking: \(event)")
    }
    
    func getTrackedEvents() -> [String] {
        return ["app_opened", "button_clicked"] // Örnek events
    }
}
#endif
