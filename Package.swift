// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "LBConfettiView",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "LBConfettiView", targets: ["LBConfettiView"])
    ],
    targets: [
        .target(name: "LBConfettiView", path: "LBConfettiView/")
    ]
)
