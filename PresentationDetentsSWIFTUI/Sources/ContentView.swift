import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Detents") {
                    NavigationLink("Medium and large") { BasicDetentExample() }
                    NavigationLink("Selection binding") { SelectionExample() }
                    NavigationLink("Custom detent (one third)") { CustomDetentExample() }
                    NavigationLink("Maps style sheet") { MapsStyleSheet() }
                }
                Section("Multiple sheets") {
                    NavigationLink("One sheet, item enum") { SettingsSheets() }
                    NavigationLink("Stacked sheets, dismiss all") { StackedSheetsExample() }
                }
            }
            .navigationTitle("Sheets")
        }
    }
}

#Preview {
    ContentView()
}