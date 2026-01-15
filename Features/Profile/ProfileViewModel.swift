import SwiftUI

class ProfileViewModel: ObservableObject {
    @Published var model = ProfileModel()
    
    func loadProfile() {
        model.fullName = "John Doe"
        model.email = "john@example.com"
        model.memberSince = "Jan 2024"
        print("Profile loaded")
    }
    
    func updateProfile() {
        print("Profile updated")
    }
}
