import SwiftUI

struct MapsStyleSheet: View {
    @State private var showSheet = true
    @State private var detent: PresentationDetent = .height(120)

    var body: some View {
        Color.green.opacity(0.2)
            .ignoresSafeArea()
            .sheet(isPresented: $showSheet) {
                ScrollView {
                    Text("Location details")
                        .padding()
                }
                .presentationDetents([.height(120), .medium, .large], selection: $detent)
                .presentationBackgroundInteraction(.enabled(upThrough: .medium))
                .presentationContentInteraction(.scrolls)
                .presentationCornerRadius(20)
                .interactiveDismissDisabled()
            }
            .navigationTitle("Maps style")
            .onDisappear { showSheet = false }
            .onAppear { showSheet = true }
    }
}