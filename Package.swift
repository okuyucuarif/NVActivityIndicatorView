// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NVActivityIndicatorViewPM",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(name: "NVActivityIndicatorViewPM", targets: ["NVActivityIndicatorViewPM"]),
        .library(name: "NVActivityIndicatorViewExtendedPM", targets: ["NVActivityIndicatorViewExtendedPM"])
    ],
    targets: [
        .target(name: "NVActivityIndicatorViewPM", path: "Sources/Base"),
        .target(name: "NVActivityIndicatorViewExtendedPM",
                dependencies: ["NVActivityIndicatorViewPM"],
                path: "Sources/Extended")
    ]
)
