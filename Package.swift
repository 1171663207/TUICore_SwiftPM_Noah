// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TUICore_SwiftPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TUICore_SwiftPM",
            targets: ["TUICore_SwiftPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TUICore",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/customer/zhenxin/8.5/TUICore.xcframework.zip",
            checksum: "24885edc759e01386d66236d13f4f83b307dc89f"
        ),
        .target(
            name: "TUICore_SwiftPM",
            dependencies: [
                .target(name: "TUICore"),
                .product(name: "SDWebImage", package: "SDWebImage")
            ]),
        .testTarget(
            name: "TUICore_SwiftPMTests",
            dependencies: ["TUICore_SwiftPM"]
        ),
    ]
)
