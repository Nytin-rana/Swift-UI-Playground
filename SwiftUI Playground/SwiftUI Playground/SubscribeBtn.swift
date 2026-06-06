//
//  SubscribeBtn.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

struct SubscribeBtn: View {
    @Binding var isSubscribe: Bool
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 1)) {
                
                isSubscribe.toggle()
            }
          
        } , label: {
            HStack {
                Text(isSubscribe ? "Unsubscribe" : "Subscribe")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(isSubscribe ? .blue : .white)
                
                
            }
            .padding()
            .background(isSubscribe ? Color.gray.opacity(0.3) : Color.red)
            .cornerRadius(10)
        })
            
    }
}


