import SwiftUI

struct SettingsSheets: View {
    enum Destination: Identifiable {
        case profile
        case help

        var id: Self { self }
    }

    @State private var destination: Destination?

    var body: some View {
        VStack(spacing: 20) {
            Button("Profile") { destination = .profile }
            Button("Help") { destination = .help }
        }
        .sheet(item: $destination) { destination in
            switch destination {
            case .profile: Text("Profile")
            case .help: Text("Help")
            }
        }
        .navigationTitle("Item sheets")
    }
}