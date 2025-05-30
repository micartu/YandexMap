// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMap",
    products: [
        .library(
            name: "YandexMap",
            targets: ["YandexMap"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "YandexMap",
            dependencies: ["YandexMapsMobile"],
            linkerSettings: [
                .unsafeFlags(["-ObjC"])
            ]
        ),
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.16.0-lite.framework.zip",
            checksum: "84ba9dd8307c720ced88b261562100c50e918e779af1c13405b96699e7053422"
        )
    ]
)
