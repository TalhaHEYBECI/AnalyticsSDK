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
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/mac-cain13/R.swift.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "AnalyticsSDK",
            dependencies: [
                "Alamofire",
                "SDWebImage",
                .product(name: "RswiftLibrary", package: "R.swift")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "AnalyticsSDKTests",
            dependencies: ["AnalyticsSDK"]),
    ]
)
