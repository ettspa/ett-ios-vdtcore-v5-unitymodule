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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-unitymodule/releases/download/0.0.10/UnityFramework.xcframework.zip",
                      checksum: "21d0aef043ba2a963137d53b6fe9862d8f04502646c146fe1a92b52a37a1f147"),

    ]
)
