// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ReadabilityKit",
    products: [
        .library(
            name: "ReadabilityKit", 
            targets: ["ReadabilityKit"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/honghaoz/Ji",
            from: "5.0.0"
        )
    ],
    targets: [
        .target(
            name: "ReadabilityKit",
            dependencies: ["Ji"],
            path: "Sources"
        ),
        .testTarget(
            name: "ReadabilityKitTests",
            dependencies: ["ReadabilityKit"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
