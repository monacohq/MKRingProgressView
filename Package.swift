// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MKRingProgressView",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "MKRingProgressView",
            targets: ["MKRingProgressView"]
        )
    ],
    targets: [
        .target(
            name: "MKRingProgressView",
            path: ".",
            exclude: [
                "Sources/MKRingProgressView/MKRingProgressView.h", 
                "Sources/MKRingProgressView/Info.plist"
            ],
            sources: ["Sources/MKRingProgressView"],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
