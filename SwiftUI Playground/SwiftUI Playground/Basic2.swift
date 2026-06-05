//
//  Basic2.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI

struct Basic2: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20){
                Text("Text Editor :").fontWeight(.bold).foregroundColor(.gray)
                TextEditor(text: .constant("Hey there, this is a text editor! "))
                    .frame(height: 100)
                    .padding(.leading,20).border(Color.gray, width: 1)
                    .frame(width: 300)
                Text("Image :").fontWeight(.bold).foregroundColor(.gray)
                Image( "1").resizable().frame(width: 200, height: 200, alignment: .center)
                    .clipShape(.circle)
                    .padding(.leading,40)
                    
                Text("Shapes :").fontWeight(.bold).foregroundColor(.gray)
                
                
                Spacer()
            }.padding(.leading,20)
                .navigationTitle("Basic 2")
        }
    }
}

#Preview {
    Basic2()
}
