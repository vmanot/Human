// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Human",
    platforms: [
        .iOS("14.0"),
        .macOS("11.0"),
        .tvOS("14.0"),
        .watchOS("7.0")
    ],
    products: [
        .library(name: "Human", targets: ["Human"])
    ],
    dependencies: [
        .package(url: "https://github.com/vmanot/Emoji.git", .branch("master")),
        .package(url: "https://github.com/vmanot/SwiftDB.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Human",
            dependencies: ["Emoji", "SwiftDB"],
            path: "Sources"
        ),
    ]
)
