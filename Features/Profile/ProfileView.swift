import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                VStack(spacing: 12) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    
                    Text(viewModel.model.fullName)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(viewModel.model.email)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                
                CustomCard {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Label("Member Since", systemImage: "calendar")
                            Spacer()
                            Text(viewModel.model.memberSince)
                        }
                    }
                    .padding()
                }
                
                PrimaryButton(title: "Edit Profile") {
                    print("Edit profile tapped")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
            .onAppear {
                viewModel.loadProfile()
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(AppState())
}
