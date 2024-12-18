//
//  BasicTracker.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//

import Foundation

#if ANALYTICS_BASIC
class BasicTracker {
    func trackEvent(_ event: String) {
        print("Basic tracking: \(event)")
    }
}
#endif
