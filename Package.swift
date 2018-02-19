// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SafeArray",
    products: [
        .library(
            name: "SafeArray",
            targets: ["SafeArray"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SafeArray", dependencies: []),
        .testTarget(name: "SafeArrayTests", dependencies: ["SafeArray"]),
    ]
)
