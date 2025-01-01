//
//  File.swift
//  
//
//  Created by talha heybeci on 2.01.2025.
//

import Foundation

class DynamicFrameworkLoader {
    static func loadFramework() -> Bool {
        guard let frameworkPath = Bundle.main.path(forResource: "AnalyticsSDK", ofType: "framework") else {
            print("Error: Framework path not found")
            return false
        }
        
        guard let handle = dlopen(frameworkPath, RTLD_LAZY) else {
            print("Error: Could not load framework at path \(frameworkPath)")
            return false
        }
        
        print("Framework loaded successfully from \(frameworkPath)")
        return true
    }
}
