//
//  Colors.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        VStack {
            Text("RGB")
            Rectangle().foregroundColor(Color.init(red: 91/255, green: 117/255, blue: 158/255)).frame(width: 100, height: 100)
            
            Text("Color Set")
            Rectangle().foregroundColor(Color("primaryColor")).frame(width: 100, height: 100)
            
            Text("Linear Gradient")
            Rectangle()
                .foregroundColor(Color.clear)
                .background(LinearGradient(colors: [.red,.green,.teal], startPoint: .leading, endPoint: .trailing))
                .frame(width: 100, height: 100)
            
            Text("Radial Gradient")
            
            Rectangle()
                .foregroundColor(Color.clear)
                .background(RadialGradient(colors: [.red,.yellow,.green], center: .center, startRadius:5, endRadius: 70 ))
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    Colors()
}
