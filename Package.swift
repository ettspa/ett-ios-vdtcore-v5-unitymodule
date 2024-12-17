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
                      url: "https://github.com/ettspa/ett-ios-vdtcore-v5-unitymodule/releases/download/0.0.7/UnityFramework.xcframework.zip",
                      checksum: "1c1388994255295faffff26f37efded623ab537026ce3cdb7e3a806f69c87b00"),

    ]
)
