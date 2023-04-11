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
            dependencies: ["YandexMapsMobile"]),
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.1.0-lite.framework.zip",
            checksum: "28310d0c2661625b8137e41b2327f751c3a25d8aa389e6772990a73e39e6485c"
        ),
        .testTarget(
            name: "YandexMapTests",
            dependencies: ["YandexMap"]
        ),
    ]
)
