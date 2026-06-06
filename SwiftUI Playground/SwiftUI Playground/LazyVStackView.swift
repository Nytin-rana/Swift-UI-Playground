//
//  LazyVStack.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

struct LazyVStackView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<1000) {i in
                    if i.isMultiple(of: 2) {
                        Text("\(i)")
                            .padding()
                            .frame(width: 420)
                            .background(Color.red)
                    }
                    else {
                        Text("\(i)")
                            .padding()
                            .frame(width: 420)
                            .background(Color.blue)
                    }
                    
                }
            }.background(Color.green)
        }
    }
}

#Preview {
    LazyVStackView()
}
