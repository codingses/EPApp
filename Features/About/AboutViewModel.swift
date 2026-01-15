import SwiftUI

class AboutViewModel: ObservableObject {
    @Published var model = AboutModel()
    
    func loadAboutInfo() {
        model.appVersion = "1.0.0"
        model.appDescription = "A powerful app for managing your experience"
        print("About info loaded")
    }
}
