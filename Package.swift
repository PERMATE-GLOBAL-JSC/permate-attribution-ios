// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PermateAttributionSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "PermateAttributionSDK", targets: ["PermateAttributionSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "PermateAttributionSDK",
            url: "https://sdk.dev.permate.com/ios/previews/4797ce72fa7cb57e914acd5ddb64088d6d2380e6-34218243281/PermateAttributionSDK-preview-4797ce72fa7cb57e914acd5ddb64088d6d2380e6-34218243281.xcframework.zip",
            checksum: "bfe2149684cff921c4b2934c54889b4aefcd63d835078fa4ceadb510cfb4a93d"
        ),
    ]
)
