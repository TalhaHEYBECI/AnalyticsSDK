//
//  AnalyticsEvent.swift
//
//
//  Created by talha heybeci on 18.12.2024.
//

public struct AnalyticsEvent {
    public let name: String
    public let parameters: [String: Any]
    
    public init(name: String, parameters: [String: Any]) {
        self.name = name
        self.parameters = parameters
    }
}
