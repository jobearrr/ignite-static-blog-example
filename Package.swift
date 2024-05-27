// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Blog",
    platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", revision: "main")
    ],
    targets: [
        .executableTarget(
            name: "Blog",
            dependencies: ["Ignite"]),
    ]
)
