import SwiftUI

struct MainView: View {
    var body: some View {

        TabView {
            Basic1().tabItem { Label("Basic", systemImage: "1.lane") }
            Basic2().tabItem { Label("Basic", systemImage: "2.lane") }
            Alerts().tabItem { Label("Alerts", systemImage: "exclamationmark.arrow.triangle.2.circlepath") }
            Colors().tabItem { Label("Colors", systemImage: "camera.filters") }
            
           
            AdditionalView().tabItem { Label("More", systemImage: "ellipsis") }
        }
        
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

