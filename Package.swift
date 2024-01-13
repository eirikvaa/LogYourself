// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/LogYourself/com/eirikvaa/logyourself/shared-kmmbridge/0.2.8/shared-kmmbridge-0.2.8.zip"
let remoteKotlinChecksum = "eda9c11151d14422d72f347877dce18fe93b5933d507c7501ddc779d4c823c46"
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