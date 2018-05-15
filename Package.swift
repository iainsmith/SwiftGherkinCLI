// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGherkinCLI",
    products: [
        .executable(name: "GherkinCLI", targets: ["GherkinCLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", from: "2.1.0"),
        .package(url: "https://github.com/kylef/Commander", from: "0.8.0"),
        .package(url: "https://github.com/iainsmith/SwiftGherkin", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "GherkinCLI",
            dependencies: ["GherkinCLILib"]),
        .target(
            name: "GherkinCLILib",
            dependencies: ["Gherkin", "Files", "Commander"]),
        .testTarget(
            name: "GherkinCLITests",
            dependencies: ["GherkinCLILib"]),
    ]
)
