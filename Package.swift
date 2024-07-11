// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FiservTransaction",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FiservTransaction",
            targets: ["FiservTransactionPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FiservTransactionPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FiservTransactionPlugin"),
        .testTarget(
            name: "FiservTransactionPluginTests",
            dependencies: ["FiservTransactionPlugin"],
            path: "ios/Tests/FiservTransactionPluginTests")
    ]
)