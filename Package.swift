// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GardenAPI",
    products: [
        .library(name: "GardenAPI", targets: ["GardenAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "GardenAPI", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
