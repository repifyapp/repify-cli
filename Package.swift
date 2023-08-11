// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "RepyfiCLI",
  products: [
    .executable(name: "repyfi", targets: ["RepyfiCLI"])
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .executableTarget(
      name: "RepyfiCLI",
      dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")]),
  ]
)
