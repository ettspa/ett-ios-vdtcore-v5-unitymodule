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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-unitymodule/releases/download/0.0.14/UnityFramework.xcframework.zip",
                      checksum: "46f93f5550166fd4b17c22c49ede33235e766906d0419b2efd68a0a6c90d7ec3"),

    ]
)
