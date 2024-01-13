// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/LogYourself/com/eirikvaa/logyourself/shared-kmmbridge/0.2.6/shared-kmmbridge-0.2.6.zip"
let remoteKotlinChecksum = "1a698f8da9922a43a3881cc911ff7bff68e5647c4e4cf0ecb6dcefa994b55efb"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
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