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
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM", from: "8.3.6498"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TUICore",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/customer/zhenxin/im/8.6/TUICore_8.6.7020.xcframework.zip",
            checksum: "5bd2ca23dbfc0743013a5fcc733068c086fa61e1f888e1de0bcb0728836ac20e"
        ),
        .target(
            name: "TUICore_SwiftPM",
            dependencies: [
                "TUICore",
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "SDWebImage", package: "SDWebImage"),
            ]),
        .testTarget(
            name: "TUICore_SwiftPMTests",
            dependencies: ["TUICore_SwiftPM"]
        ),
    ]
)
