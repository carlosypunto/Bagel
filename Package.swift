// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "BagelSwift",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "BagelSwift", targets: ["BagelSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/carlosypunto/CocoaAsyncSocket.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "BagelSwift",
            dependencies: ["CocoaAsyncSocket"],
            path: "iOS/BagelSwift"
        )
    ]
)
