//
//  StateAndConditionalView.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

struct StateAndConditionalView: View {
    @State var isSubscribe: Bool = false
    var body: some View {
        VStack(spacing: 30) {
            
            Text("@state,@binding,Conditional If else Views,Animation")
            Image("1").resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: ContentMode.fill)
                .clipShape(Circle())
                .overlay(content: {
                    Circle()
                        .stroke(isSubscribe ? Color.red : Color.gray, lineWidth: 10)
                })
            SubscribeBtn(isSubscribe: $isSubscribe)
            
            VStack{
                if isSubscribe {
                    Text("You are subscribed").foregroundStyle(Color.green)
                        .font(.system(size: 30, weight: .bold, design: .default))
                }else{
                    Text("Subscribe to get the latest updates").foregroundStyle(Color.gray)
                }
            }
            
            
                   
                   
                   
                   
                   
            }.padding()
        
        
    }
}

#Preview {
    StateAndConditionalView()
}
