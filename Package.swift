// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Variadic",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(name: "Variadic", targets: ["Variadic"]),
    ],
    targets: [
        .target(name: "Variadic")
    ]
)
