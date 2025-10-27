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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-unitymodule/releases/download/5.1.0/UnityFramework.xcframework.zip",
                      checksum: "efae13d8b6c8d6ae7979c43e67670f6ae48a6f7df0ab00bfb4378169cf7f2d36"),

    ]
)
