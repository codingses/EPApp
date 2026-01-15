import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var model = SettingsModel()
    
    func logout() {
        print("User logged out")
    }
    
    func saveSettings() {
        print("Settings saved")
    }
}
