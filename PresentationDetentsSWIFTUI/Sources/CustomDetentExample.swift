import SwiftUI

struct OneThird: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        context.maxDetentValue / 3
    }
}

struct CustomDetentExample: View {
    @State private var showSheet = false

    var body: some View {
        Button("Show Sheet") { showSheet = true }
            .sheet(isPresented: $showSheet) {
                Text("One third of the maximum")
                    .presentationDetents([.custom(OneThird.self)])
            }
            .navigationTitle("Custom detent")
    }
}