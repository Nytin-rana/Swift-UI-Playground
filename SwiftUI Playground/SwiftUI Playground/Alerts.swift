//
//  Alerts.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI

struct Alerts: View {
    @State private var isAlertPresented: Bool = false
    @State private var isAlertPresented1: Bool = false
    @State private var isAlertPresented2: Bool = false
    @State private var isAlertPresented3: Bool = false
    @State private var input: String = ""
    var body: some View {
        VStack (alignment: .center, spacing: 20){
            
        
        
        Button("Show with message") {
            isAlertPresented.toggle()
        }.alert(isPresented: $isAlertPresented) {
            Alert(title: Text("Alert"), message: Text("This is an alert"))
        }
        
        Button("Show Alert") {
            isAlertPresented1.toggle()
        }
        .alert("This is an alert", isPresented: $isAlertPresented1) {
            //
        }
        Button("Show Alert with distructive button") {
            isAlertPresented2.toggle()
        }
        .alert("This is an alert", isPresented: $isAlertPresented2) {
            Button("Submit",role: .destructive) {
                //                isAlertPresented.toggle()
                print("submit")
            }
        }
        Button("Show Alert with input field") {
            isAlertPresented3.toggle()
        }
        .alert("This is an alert", isPresented: $isAlertPresented3,actions:  {
            TextField("Enter your name", text: $input)
            Button("Submit",role: .destructive) {
                //                isAlertPresented.toggle()
                print("submit :\(input)")
            }
        },message: {
            Text("Please type your name")
        })
    }
}
}

#Preview {
    Alerts()
}
