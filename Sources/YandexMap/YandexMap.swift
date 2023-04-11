@_exported import YandexMapsMobile
import CoreLocation

public struct YandexMap {
    public static func setup() {
        YMKMapKit.setApiKey(const.key)
    }

    enum const {
        // the key was taken from TP repo, hopefully we can use it too
        static let key = "053a9eab-8ba7-4456-8402-5f4d063c16f6"
    }
}
