// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/LogYourself/com/eirikvaa/logyourself/shared-kmmbridge/0.2.7/shared-kmmbridge-0.2.7.zip"
let remoteKotlinChecksum = "da7bcc8eb86daa2a4518f153e02b7534d30049725cb68d212f2e13fd67b1c325"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
    ],
    swiftLanguageVersions: [.v5]
)