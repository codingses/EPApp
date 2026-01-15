import SwiftUI

class AppState: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var currentUser: String?
    @Published var isDarkMode: Bool = false
    
    init() {
        // Initialize app state
    }
}
