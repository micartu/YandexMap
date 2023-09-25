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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.4.0-lite.framework.zip",
            checksum: "68c56bcb6164b358f400358bdec03f7124a8fff5247589b9a305bc59b57e9c53"
        )
    ]
)
