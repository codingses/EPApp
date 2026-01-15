import SwiftUI

struct AboutView: View {
    @StateObject private var viewModel = AboutViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("About \(viewModel.model.appName)")
                    .font(.title)
                    .fontWeight(.bold)
                
                CustomCard {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("App Information")
                            .font(.headline)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text("Version:")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text(viewModel.model.appVersion)
                            }
                            
                            Divider()
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Description")
                                    .fontWeight(.semibold)
                                Text(viewModel.model.appDescription)
                                    .font(.caption)
                                    .lineLimit(nil)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                }
                
                PrimaryButton(title: "Refresh Info") {
                    viewModel.loadAboutInfo()
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("About")
            .onAppear {
                viewModel.loadAboutInfo()
            }
        }
    }
}

#Preview {
    AboutView()
}
