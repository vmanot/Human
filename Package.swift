// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Human",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
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
