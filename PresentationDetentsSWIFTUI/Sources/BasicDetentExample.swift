import SwiftUI

// Code Block 1 from the article (renamed so ContentView can host the demo list).
struct BasicDetentExample: View {
    @State private var showSheet = false

    var body: some View {
        Button("Show Sheet") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            Text("Drag me")
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        }
        .navigationTitle("Medium and large")
    }
}