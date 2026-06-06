import SwiftUI

// 1. Define an enum for your 10 different screens
enum AppScreen: String, CaseIterable, Identifiable {
    case ignoreSafeArea = "Ignore Safe Area"
    case group = "Group"
    case systemIcons = "System Icons"
    case frames = "Frames"
    case container = "Container"
    case lazyVStack = "Lazy VStack"
    case downloads = "Downloads"
    case gallery = "Gallery"
    case security = "Security"
    case settings = "Settings"
    
    var id: String { self.rawValue }
    
    // SF Symbols for each row
    var icon: String {
        switch self {
        case .ignoreSafeArea: return "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"
        case .group: return "rectangle.stack"
        case .systemIcons: return "wand.and.rays.inverse"
        case .frames: return "ipad.and.arrow.forward"
        case .container: return "text.redaction"
        case .lazyVStack: return "lasso.badge.sparkles"
        case .downloads: return "arrow.down.circle"
        case .gallery: return "photo.on.rectangle"
        case .security: return "shield"
        case .settings: return "gearshape"
        }
    }
}

struct AdditionalView: View {
    
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
                case .ignoreSafeArea:
                    IgnoreSafeArea()
                case .group:
                    GroupView()
                case .systemIcons:
                    SystemIcons()
                case .frames:
                   Frames()
                case .container:
                    Container()
                case .lazyVStack:
                    LazyVStack()
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

 
#Preview {
    AdditionalView()
}

