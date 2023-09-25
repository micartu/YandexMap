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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.3.0-lite.framework.zip",
            checksum: "d465e3ff234b7add57c08b59647ed42258950ae5b3b416b0b0fac651ca14b40a"
        )
    ]
)
