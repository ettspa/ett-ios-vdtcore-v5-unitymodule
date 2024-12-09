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
                      url: "https://github.com/MarcoMirisola/Test/releases/download/0.0.2/UnityFramework.xcframework.zip",
                      checksum: "8fecfb563dc7f5f5022680ecbc031567846f0806d43c6034a9f2887d7a4d24d6"),

    ]
)
