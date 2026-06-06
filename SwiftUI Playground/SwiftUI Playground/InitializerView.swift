//
//  InitializerView.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

struct InitView: View {
    let title: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 300, height: 57)
                .background(LinearGradient(colors: [.yellow,.blue], startPoint: .leading, endPoint: .bottom))
                .cornerRadius(10)
            Text(title).font(Font.system(size: 30))
                .fontWeight(.bold)
        }
    }
}

struct InitializerView: View {
    var body: some View {
        InitView(title: "Welcome")
    InitView(title: "To")
    InitView(title: "Init View")
    }
}

#Preview {
    InitializerView()
}
