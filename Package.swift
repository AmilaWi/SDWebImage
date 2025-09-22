// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDWebImage",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "SDWebImageCore2",
            targets: ["SDWebImageCore2"]),
        .library(
            name: "SDWebImageMapKit",
            targets: ["SDWebImageMapKit"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SDWebImageCore2",
            dependencies: [],
            path: "SDWebImage",
            sources: ["Core", "Private"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")],
            cSettings: [
                .headerSearchPath("Core"),
                .headerSearchPath("Private")
            ]
        ),
        .target(
            name: "SDWebImageMapKit",
            dependencies: ["SDWebImageCore2"],
            path: "SDWebImageMapKit",
            sources: ["MapKit"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")]
        )
    ]
)
