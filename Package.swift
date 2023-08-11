// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScrollViewStyle",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ScrollViewStyle",
            targets: ["ScrollViewStyle"]),
    ],
    dependencies: [
        .package(url: "https://github.com/behring/SwiftUI-Introspect.git", branch: "master"),
        .package(url: "https://github.com/behring/STools.git", branch: "master")
    ],
    targets: [
        .target(
            name: "ScrollViewStyle",
            dependencies: [
                .product(name: "Introspect", package: "SwiftUI-Introspect"),
                .product(name: "STools", package: "STools")
            ]),
        .testTarget(
            name: "ScrollViewStyleTests",
            dependencies: ["ScrollViewStyle"]),
    ]
)
