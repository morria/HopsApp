// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Hops",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Hops",
            targets: ["Hops"]),
        .executable(
            name: "hops",
            targets: ["HopsCLI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.19.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Hops",
            dependencies: ["Protobufs"]
        ),
        .target(
            name: "Protobufs",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        ),
        .target(
            name: "HopsCLI",
            dependencies: []
        ),
        .testTarget(
            name: "HopsTests",
            dependencies: ["Hops"]
        ),
    ]
)
