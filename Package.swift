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
                      url: "https://github.com/MarcoMirisola/Test/releases/download/0.0.3/UnityFramework.xcframework.zip",
                      checksum: "3e323849dc3f188eda359fb6df1a6c2edf11b057ad8577f195aeaba660d34e55"),

    ]
)
