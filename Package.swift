// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AnalyticsSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AnalyticsSDK",
            targets: ["AnalyticsSDK"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AnalyticsSDK",
            dependencies: [],
            swiftSettings: [
                .define("ANALYTICS_LOCATION", .when(configuration: .debug)),
                .define("ANALYTICS_BASIC", .when(configuration: .debug))
            ]),
        .testTarget(
            name: "AnalyticsSDKTests",
            dependencies: ["AnalyticsSDK"])
    ]
)
