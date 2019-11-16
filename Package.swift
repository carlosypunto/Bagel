// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Bagel",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "Bagel", targets: ["Bagel"])
    ],
    dependencies: [
        .package(url: "https://github.com/grangej/CocoaAsyncSocket.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Bagel",
            dependencies: ["CocoaAsyncSocket"],
            path: "iOS/Source"
        )
    ]
)
