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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.6.1-lite.framework.zip",
            checksum: "c08822c2ad1a9e67cbdaf45f81487e73f89685eeb807f192788859910d1ce1c1"
        )
    ]
)
