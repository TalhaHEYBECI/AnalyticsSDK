//
//  AnalyticsEvent.swift
//
//
//  Created by talha heybeci on 18.12.2024.
//

import Foundation

public struct AnalyticsEvent {
    public let name: String
    public let parameters: [String: Any]
    public let timestamp: Date
    
    public init(name: String, parameters: [String: Any] = [:]) {
        self.name = name
        self.parameters = parameters
        self.timestamp = Date()
    }
}
