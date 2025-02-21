// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Chart",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Chart",
            targets: ["Chart"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/curdicu/UIExtensions.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HSExtensions.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Chart",
            dependencies: [
                "SnapKit",
                .product(name: "UIExtensions", package: "UIExtensions"),
                .product(name: "HsExtensions", package: "HSExtensions"),
            ]
        ),
    ]
)
