import SwiftUI

extension View {
    func roundedCard(cornerRadius: CGFloat = 12, shadowRadius: CGFloat = 4) -> some View {
        self
            .background(Color(.systemBackground))
            .cornerRadius(cornerRadius)
            .shadow(radius: shadowRadius)
    }
    
    func customPadding(_ edges: Edge.Set = .all, _ length: CGFloat = 16) -> some View {
        self.padding(edges, length)
    }
    
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
