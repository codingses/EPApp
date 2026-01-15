import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var model = HomeModel()
    
    func loadContent() {
        model.contentTitle = "Your latest updates"
        print("Home content loaded")
    }
}
