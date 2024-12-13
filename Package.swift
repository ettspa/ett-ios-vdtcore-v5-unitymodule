// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VDTUnity",
        platforms: [
            .iOS(.v14),
        ],
    products: [
        .library(
            name: "VDTUnity",
            targets: ["VDTUnity"]),
    ],
    targets: [
        .target(
            name: "VDTUnity",
            dependencies: ["UnityFramework"]
        ),
        .binaryTarget(name: "UnityFramework",
                      url: "https://github.com/MarcoMirisola/Test/releases/download/0.0.4/UnityFramework.xcframework.zip",
                      checksum: "546eecadf9d4c1238cb0e5ba40065debb2561be23ed971637c9d3facdef0eb61"),

    ]
)
