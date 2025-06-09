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
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TUICore",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/customer/zhenxin/8.5/TUICore.xcframework.zip",
            checksum: "5bd2ca23dbfc0743013a5fcc733068c086fa61e1f888e1de0bcb0728836ac20e"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://github.com/SDWebImage/SDWebImage/releases/download/5.21.0/SDWebImage-dynamic.xcframework.zip",
            checksum: "e034ea04f5e86866bc3081d009941bd5b2a2ed705b3a06336656484514116638"
        ),
        .target(
            name: "TUICore_SwiftPM",
            dependencies: [
                "SDWebImage",
                "TUICore",
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
            ]),
        .testTarget(
            name: "TUICore_SwiftPMTests",
            dependencies: ["TUICore_SwiftPM"]
        ),
    ]
)
