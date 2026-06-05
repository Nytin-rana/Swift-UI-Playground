//
//  IgnoreSafeArea.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 05/06/26.
//

import SwiftUI

struct IgnoreSafeArea: View {
    @State var option: Int = 1
    var ignoredEdges: Edge.Set{
        switch option {
        case 1: return .top
        case 2: return .bottom
        case 3: return .all
        default: return []
        }
    }
    var body: some View {
        VStack {
            Button(action: {
                option = 1
            }) {
                Text("Top").bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
            Button(action: {
                option = 2
            }) {
                Text("Bottom").bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
            Button(action: {
                option = 3
            }) {
                Text("All").bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .background(Color.red.ignoresSafeArea(edges: ignoredEdges))
        
        
    }
}

#Preview {
    IgnoreSafeArea()
}

