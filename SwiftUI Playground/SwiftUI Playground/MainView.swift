import SwiftUI

struct MainView: View {
    var body: some View {

        TabView {
            Basic1().tabItem { Label("Basic", systemImage: "1.circle") }
            Basic2().tabItem { Label("Basic", systemImage: "2.circle") }
            Alerts().tabItem { Label("Alerts", systemImage: "exclamationmark.triangle.fill") }
            Colors().tabItem { Label("Colors", systemImage: "camera.filters") }
            
            //More tabs
            AdditionalView().tabItem { Label("More", systemImage: "ellipsis") }
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

