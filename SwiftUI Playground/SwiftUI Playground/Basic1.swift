//
//  Basic1.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI

struct Basic1: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 50){
                Text("Text :").fontWeight(.bold).foregroundColor(.gray)
                Text("This is a text.").font(.system(size: 42)).padding(.leading,20)
                Text("Button :").fontWeight(.bold).foregroundColor(.gray)
                Button(action :{
                    print("Button is pressed")
                }){
                    Text("Click Me!")
                        .bold()
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.leading,90)
                }
                Text("Text Field :").fontWeight(.bold).foregroundColor(.gray)
                TextField("Enter your name", text: .constant("")).padding(10).border(Color.gray, width: 1).padding(.leading,20).frame(width: 300)

                Spacer()
            }.padding(.leading,20)
                .navigationTitle("Basic 1")
        }
    }
}

#Preview {
    Basic1()
}
