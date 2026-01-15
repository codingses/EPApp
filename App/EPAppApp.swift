import SwiftUI

@main
struct EPAppApp: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Schedule", systemImage: "calendar.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Lunch", systemImage: "food.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    EPAppApp()
}
