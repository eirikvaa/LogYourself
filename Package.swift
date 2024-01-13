// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/LogYourself/com/eirikvaa/logyourself/shared-kmmbridge/0.2.2/shared-kmmbridge-0.2.2.zip"
let remoteKotlinChecksum = "dc56efe8bc00ab02d996e3a29f33a133d97807f8e844b47e18b1bff1626bc314"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
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
        ,
    ]
)