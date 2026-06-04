//
//  ContentView.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI


struct ContentView: View {
    
    
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea(.all)
    }
    
}
#Preview {
    ContentView()
        
}
