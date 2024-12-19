//
//  AnalyticsSDK.swift
//
//
//  Created by talha heybeci on 19.12.2024.
//


import Foundation
import UIKit
import Alamofire
import SDWebImage

public class AnalyticsSDK {
    public static let shared = AnalyticsSDK()
    private init() {}
    
    public func showFeatureViewController(from viewController: UIViewController) {
        let featureVC = FeatureViewController()
        viewController.present(featureVC, animated: true)
    }
}
