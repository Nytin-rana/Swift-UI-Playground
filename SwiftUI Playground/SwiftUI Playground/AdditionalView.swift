import SwiftUI
internal import Combine

class UserData: ObservableObject {
    @Published var name: String = "SUPER HEROS"
}


enum AppScreen: String, CaseIterable, Identifiable {
    case ignoreSafeArea = "Ignore Safe Area"
    case group = "Group"
    case systemIcons = "System Icons"
    case frames = "Frames"
    case container = "Container"
    case lazyVStack = "Lazy VStack"
    case initializerView = "Initializer View"
    case stateAndConditionalView = "State And Conditional View"
    case PNLS = "PNLS"
    case CTPDSS = "CTPDSS"
    case objects = "Objects"
    
    var id: String { self.rawValue }
    
    
    var icon: String {
        switch self {
        case .ignoreSafeArea: return "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left"
        case .group: return "rectangle.stack"
        case .systemIcons: return "wand.and.rays.inverse"
        case .frames: return "ipad.and.arrow.forward"
        case .container: return "text.redaction"
        case .lazyVStack: return "lasso.badge.sparkles"
        case .initializerView: return "arrow.trianglehead.swap"
        case .stateAndConditionalView: return "photo.on.rectangle"
        case .PNLS: return "xmark.shield"
        case .CTPDSS: return "gearshape"
        case .objects: return "square.grid.3x1.folder.badge.plus"
        }
    }
}

struct AdditionalView: View {
    
    @State private var selectedScreen: AppScreen? = nil
    @EnvironmentObject var userData: UserData
    
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
            
            if let screen = selectedScreen {
                DestinationView(userData: userData, screen: screen)
                    
            } else {
                Text("Select an item from the sidebar")
                    .foregroundColor(.secondary)
            }
        }
    }
}


struct DestinationView: View {
    @ObservedObject var userData: UserData
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
                    LazyVStackView()
                case .initializerView:
                    InitializerView()
                case .stateAndConditionalView:
                    StateAndConditionalView()
                case .PNLS:
                    PNLS()
                case .CTPDSS:
                    CTPDSS()
                case .objects:
                    Objects()
                        
                    
                
                }
            }
            
            .navigationTitle(screen.rawValue)
        }
    }
}


#Preview {
    AdditionalView()
        .environmentObject(UserData())
}
