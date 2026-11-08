import SwiftUI

struct SelectionExample: View {
    @State private var showSheet = false
    @State private var detent: PresentationDetent = .medium

    var body: some View {
        Button("Show Sheet") { showSheet = true }
            .sheet(isPresented: $showSheet) {
                Button("Go full height") { detent = .large }
                    .presentationDetents([.height(100), .medium, .large], selection: $detent)
            }
            .navigationTitle("Selection")
    }
}