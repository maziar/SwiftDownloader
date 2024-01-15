// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftDownloader",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftDownloader",
            targets: ["SwiftDownloader"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", from: "4.2.0"),
        .package(url: "https://github.com/easi6dev/AlamofireObjectMapper.git", branch: "master"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
        .package(url: "https://github.com/Otbivnoe/CodableAlamofire.git", from: "1.2.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.0"),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftDownloader",
            dependencies: [
                "Alamofire",
                "ObjectMapper",
                "AlamofireObjectMapper",
                "SwiftyJSON",
                "CodableAlamofire",
                "CryptoSwift",
                "CocoaLumberjack"
            ]
        ),
        .testTarget(
            name: "SwiftDownloaderTests",
            dependencies: ["SwiftDownloader"]
        ),
    ]
)
