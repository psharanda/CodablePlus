// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "CodablePlus",
                      platforms: [.macOS(.v10_10),
                                  .iOS(.v8),
                                  .tvOS(.v9),
                                  .watchOS(.v2)],
                      products: [.library(name: "CodablePlus",
                                          targets: ["CodablePlus"])],
                      targets: [.target(name: "CodablePlus",
                                        path: "Sources"),
                                .testTarget(
                                    name: "CodablePlusTests",
                                    dependencies: ["CodablePlus"]),],
                      swiftLanguageVersions: [.v5])

