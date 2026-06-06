//
//  Container.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 05/06/26.
//

import SwiftUI

struct Container: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Text("CONTAINERS :").font(.system(size: 50).bold())
            Text("VStack").foregroundStyle(Color.red)
            VStack {
                Text("Item 1").font(.system(size: 30))
                Text("Item 2").font(.system(size: 30))
                Text("Item 3").font(.system(size: 30))
            }
            Text("HStack").foregroundStyle(Color.red)
            HStack {
                Text("Item 1").font(.system(size: 30))
                Text("Item 2").font(.system(size: 30))
                Text("Item 3").font(.system(size: 30))
            }
            Text("ZStack").foregroundStyle(Color.red)
            ZStack {
                Rectangle().fill(Color.red)
                    .frame(width: 100, height: 100)
                
                Circle().fill(Color.blue).frame(width: 100, height: 100)
                Text("Item").font(.system(size: 30))
            }
        }
    }
}

#Preview {
    Container()
}
