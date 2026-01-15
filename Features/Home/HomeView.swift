import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("Welcome to Home")
                    .font(.title)
                    .fontWeight(.bold)
                
                CustomCard {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Latest Content")
                            .font(.headline)
                        Text(viewModel.model.contentTitle)
                            .font(.body)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
                
                PrimaryButton(title: "Refresh") {
                    viewModel.loadContent()
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
            .onAppear {
                viewModel.loadContent()
            }
        }
    }
}

#Preview {
    HomeView()
}
