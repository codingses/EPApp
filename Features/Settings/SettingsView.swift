import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Form {
                    Section(header: Text("Appearance")) {
                        Toggle("Dark Mode", isOn: $appState.isDarkMode)
                    }
                    
                    Section(header: Text("Notifications")) {
                        Toggle("Enable Notifications", isOn: $viewModel.model.notificationsEnabled)
                    }
                    
                    Section(header: Text("Other")) {
                        Button(role: .destructive) {
                            viewModel.logout()
                        } label: {
                            Text("Logout")
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(AppState())
}
