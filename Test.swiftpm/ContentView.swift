import SwiftUI

struct ContentView: View {
    var body: some View {
//        TabView {
//            // First Tab
//            HomeView()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            
//            // Second Tab
//            ProfileView()
//                .tabItem {
//                    Label("Profile", systemImage: "person.circle")
//                }
//            
//            // Third Tab
//            SettingsView()
//                .tabItem {
//                    Label("Settings", systemImage: "gearshape")
//                }
//        }
        TabView {
            Text("Tab 1").tabItem { Label("One", systemImage: "1.circle") }
            Text("Tab 2").tabItem { Label("Two", systemImage: "2.circle") }
            Text("Tab 3").tabItem { Label("Three", systemImage: "3.circle") }
            Text("Tab 4").tabItem { Label("Four", systemImage: "4.circle") }
            
            // Tabs 5 through 10 will automatically be tucked inside a "More" tab
//            Text("Tab 5").tabItem { Label("Five", systemImage: "5.circle") }
//            Text("Tab 6").tabItem { Label("Six", systemImage: "6.circle") }
//            Text("Tab 7").tabItem { Label("Seven", systemImage: "7.circle") }
//            Text("Tab 8").tabItem { Label("Eight", systemImage: "8.circle") }
//            Text("Tab 9").tabItem { Label("Nine", systemImage: "9.circle") }
//            Text("Tab 10").tabItem { Label("Ten", systemImage: "10.circle") }
            MainSplitView().tabItem { Label("More", systemImage: "ellipsis") }
        }
    }
}

// Dummy views for demonstration
//struct HomeView: View { var body: some View { Text("Home Screen").font(.largeTitle) } }
//struct ProfileView: View { var body: some View { Text("Profile Screen").font(.largeTitle) } }
//struct SettingsView: View { var body: some View { Text("Settings Screen").font(.largeTitle) } }
