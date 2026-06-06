//
//  Frames.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 05/06/26.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        VStack{
            Text("Top Leading")
                .frame(width: 200, height: 200, alignment: .init(horizontal: .leading, vertical: .top))
                .background(Color.red)
                .font(.system(size: 25))
            Text("Bottom Trailing")
                .frame(width: 200, height: 200, alignment: .init(horizontal: .trailing, vertical: .bottom))
                .background(Color.blue)
                .font(Font.system(size: 25))
        }
    }
}

#Preview {
    Frames()
}
