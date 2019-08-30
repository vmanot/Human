// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Human",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Human", targets: ["Human"])
    ],
    targets: [
        .target(name: "Human", dependencies: [], path: "Sources"),
        .testTarget(name: "HumanTests", dependencies: ["Human"], path: "Tests")
    ],
    swiftLanguageVersions: [
        .version("5.1")
    ]
)
