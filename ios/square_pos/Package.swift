// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "square_pos",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "square-pos", targets: ["square_pos"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/square/SquarePointOfSaleSDK-iOS.git", exact: "3.5.2"),
    ],
    targets: [
        .target(
            name: "square_pos",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SquarePointOfSaleSDK", package: "SquarePointOfSaleSDK-iOS"),
            ]
        )
    ]
)
