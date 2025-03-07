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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-unitymodule/releases/download/0.0.11/UnityFramework.xcframework.zip",
                      checksum: "257b262eb7166083ad93c97b52668c189b4f0cde755258e6886a7f033c476e99"),

    ]
)
