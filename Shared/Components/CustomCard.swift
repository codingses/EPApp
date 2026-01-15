import SwiftUI

struct CustomCard<Content: View>: View {
    @ViewBuilder let content: Content
    
    var body: some View {
        VStack(alignment: .leading) {
            content
        }
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}

#Preview {
    CustomCard {
        VStack(alignment: .leading, spacing: 8) {
            Text("Card Title")
                .font(.headline)
            Text("Card content goes here")
                .font(.body)
        }
        .padding()
    }
    .padding()
}
