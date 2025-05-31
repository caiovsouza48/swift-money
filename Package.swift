// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swift-money",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "MonetaryValue", targets: ["MonetaryValue"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.4.3"),
    ],
    targets: [
        .target(name: "MonetaryValue"),
        .testTarget(name: "MoneyTests", dependencies: ["MonetaryValue"]),
    ]
)
