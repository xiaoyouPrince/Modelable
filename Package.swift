// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Modelable",
    products: [
        .library(
            name: "Modelable",
            targets: ["Modelable"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Modelable"),
        .testTarget(
            name: "ModelableTests",
            dependencies: ["Modelable"]),
    ]
)
