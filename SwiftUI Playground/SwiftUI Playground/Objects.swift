import SwiftUI
internal import Combine

class ViewModel: ObservableObject {
    let objectWillChange: ObservableObjectPublisher
    
    @Published var heroNames: [String] = []

    init() {
        heroNames = ["Batman", "Superman", "Wonder Woman"]
        
        objectWillChange = .init()
    }
    
    
    
    func addHero(name: String) {
        heroNames.append(name)
    }
}

struct Objects: View {
    @State private var isAlertPresented: Bool = false
    @State var input: String = ""
    @EnvironmentObject var userData: UserData
    @ObservedObject var viewModel = ViewModel()
    //we can use here StateObject as well it is used in parent class
    //ObservedObject always rerender when the view rerender it is used in child class

    var body: some View {
        
        NavigationStack {
            
            
            List(viewModel.heroNames, id :\.self) { hero in
                Text(hero)
            }
            .navigationTitle(Text(userData.name))
            .toolbar(content: {
                Button(action: {
                    isAlertPresented.toggle()
                }, label: {
                    Image(systemName: "plus")
                })
                
                
                .alert("Add New Hero", isPresented: $isAlertPresented,actions:  {
                    TextField("New Hero", text: $input)
                    Button("Add",role: .destructive) {
                        
                        viewModel.addHero(name: input)
                    }
                },message: {
                    Text("Write new hero name below")
                })
                
                
            })
        }
    }
}


