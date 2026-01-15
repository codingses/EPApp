import Foundation

enum Constants {
    enum API {
        static let baseURL = "https://api.example.com"
        static let timeout: TimeInterval = 30
    }
    
    enum AppConfig {
        static let appName = "EPApp"
        static let appVersion = "1.0.0"
        static let minIOSVersion = "14.0"
    }
    
    enum UI {
        static let cornerRadius: CGFloat = 12
        static let shadowRadius: CGFloat = 4
        static let standardSpacing: CGFloat = 16
        static let smallSpacing: CGFloat = 8
    }
}
