import SwiftUI

// 1. Define an enum for your 10 different screens
enum AppScreen: String, CaseIterable, Identifiable {
    case home = "Home"
    case profile = "Profile"
    case analytics = "Analytics"
    case messages = "Messages"
    case documents = "Documents"
    case favorites = "Favorites"
    case downloads = "Downloads"
    case gallery = "Gallery"
    case security = "Security"
    case settings = "Settings"
    
    var id: String { self.rawValue }
    
    // SF Symbols for each row
    var icon: String {
        switch self {
        case .home: return "house"
        case .profile: return "person.circle"
        case .analytics: return "chart.bar"
        case .messages: return "bubble.left"
        case .documents: return "doc.text"
        case .favorites: return "star"
        case .downloads: return "arrow.down.circle"
        case .gallery: return "photo.on.rectangle"
        case .security: return "shield"
        case .settings: return "gearshape"
        }
    }
}

struct MainSplitView: View {
    // Keep track of which screen is currently selected (defaults to Home)
    @State private var selectedScreen: AppScreen? = nil
    
    var body: some View {
        NavigationSplitView {
            // ---- SIDEBAR (Column 1) ----
            List(AppScreen.allCases, selection: $selectedScreen) { screen in
                NavigationLink(value: screen) {
                    Label(screen.rawValue, systemImage: screen.icon)
                }
            }
            .navigationTitle("Dashboard")
            
        } detail: {
            // ---- DETAIL VIEW (Column 2) ----
            // When a user taps a sidebar item, this area updates dynamically
            if let screen = selectedScreen {
                DestinationView(screen: screen)
            } else {
                Text("Select an item from the sidebar")
                    .foregroundColor(.secondary)
            }
        }
    }
}

// 2. A dynamic detail view switcher
struct DestinationView: View {
    let screen: AppScreen
    
    var body: some View {
        NavigationStack {
            Group {
                switch screen {
                case .home:
                    Text("Welcome Home Screen")
                case .profile:
                    Text("User Profile Settings")
                case .analytics:
                    Text("Data & Charts Overview")
                case .messages:
                    Text("Your Inbox")
                case .documents:
                    Text("Files and PDFs")
                case .favorites:
                    Text("Your Bookmarked Items")
                case .downloads:
                    Text("Download Queue")
                case .gallery:
                    Text("Media Gallery")
                case .security:
                    Text("Privacy & Security Controls")
                case .settings:
                    Text("App Settings Configurations")
                }
            }
            .font(.largeTitle)
            .navigationTitle(screen.rawValue)
        }
    }
}

// Preview provider for testing
//struct MainSplitView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainSplitView()
//    }
//}
#Preview {
    MainSplitView()
}
