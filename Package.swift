// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "NiftyStack",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        .library(
            name: "NiftyStack",
            targets: ["NiftyStack"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NiftyStack",
            dependencies: []),
        .testTarget(
            name: "NiftyStackTests",
            dependencies: ["NiftyStack"]),
    ]
)
