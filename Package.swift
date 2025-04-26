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
        .package(url: "https://github.com/emqx/CocoaMQTT.git", from: "2.0.0"),

    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Hops",
            dependencies: ["MeshtasticProtobufs"]
        ),
        .target(
            name: "MeshtasticProtobufs",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "CocoaMQTT", package: "CocoaMQTT"),
            ]
        ),
        .executableTarget(
            name: "HopsCLI",
            dependencies: ["Hops"]
        ),
        .testTarget(
            name: "HopsTests",
            dependencies: ["Hops"]
        ),
    ]
)
