import SwiftUI

struct FirstSheet: View {
    @Environment(\.dismiss) private var dismissFirst
    @State private var showSecond = false

    var body: some View {
        Button("Open Second") { showSecond = true }
            .sheet(isPresented: $showSecond) {
                SecondSheet {
                    showSecond = false
                    dismissFirst()
                }
            }
    }
}

struct SecondSheet: View {
    let dismissAll: () -> Void

    var body: some View {
        Button("Done", action: dismissAll)
    }
}

// Presents FirstSheet so the stacked dismissal can be tried.
struct StackedSheetsExample: View {
    @State private var showFirst = false

    var body: some View {
        Button("Open First") { showFirst = true }
            .sheet(isPresented: $showFirst) {
                FirstSheet()
            }
            .navigationTitle("Stacked sheets")
    }
}