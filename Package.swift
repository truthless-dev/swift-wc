// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-wc",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    .executable(
      name: "swc",
      targets: [
        "Cli"
      ]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.1.0"),
  ],
  targets: [
    .executableTarget(
      name: "Cli",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        .target(name: "WC"),
      ]
    ),
    .target(
      name: "WC"
    ),
    .testTarget(
      name: "WCTests",
      dependencies: [.target(name: "WC")]
    ),
  ],
  swiftLanguageModes: [.v6]
)
