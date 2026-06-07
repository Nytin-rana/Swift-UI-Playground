//
//  CTPDSS.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

enum Fruits: String, CaseIterable, Identifiable {
    case apple
    case banana
    case mango
    case orange
    case papaya
    case pineapple
    case strawberry
    case watermelon
    public var id: String { self.rawValue }
}
enum Cars: String, CaseIterable, Identifiable {
    case audi
    case bently
    case lamborghini
    case tesla
    case toyota
    public var id: String { self.rawValue }
}

struct CTPDSS: View {
    @State var isOn: Bool = false
    @State var selectedFruit: Fruits = .apple
    @State var selectedCar: Cars = .audi
    @State var date: Date = Date()
    @State var sliderValue: Double = 0.5
    var body: some View {
        NavigationStack {
            
            
            VStack (alignment: .center, spacing: 20 ){
                Text("Context Menu, Toggle, Picker, Date Picker, Slider, Stepper")
                    .foregroundStyle(Color.blue)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                //Context Menu
                Text("Long press to show context menu")
                    .contextMenu(menuItems: {
                        Button(action: {
                            print("Tapped")
                        } ,label:{
                            HStack {
                                Text("Mark as Favourite")
                                Image(systemName: "heart")
                                
                            }
                        })
                        Button(role: .destructive,action: {
                            print("Tapped")
                        } ,label:{
                            HStack {
                                Text("Delete")
                                Image(systemName: "trash")
                                
                            }
                        })
                    })
                
                //Toggle Switch
                Toggle("Toggle", isOn: $isOn)
                    .padding(10)
                    .tint(Color.blue)
                    .onChange(of: isOn) { oldValue, newValue in
                        print(oldValue, newValue)
                    }
                
                //Picker
                List {
                    Picker("Picker menu", selection: $selectedFruit) {
                        ForEach(Fruits.allCases, id: \.self) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    .pickerStyle(.menu)
                    
                    Picker("Picker wheel", selection: $selectedCar) {
                        ForEach(Cars.allCases, id: \.self) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    Picker("Picker NavigationLink", selection: $selectedFruit) {
                        ForEach(Fruits.allCases, id: \.self) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                    DatePicker("Date and Time", selection: $date, displayedComponents: [.date, .hourAndMinute])
                    Text("Slider Value: \(Int(sliderValue))")
                    
                    Slider(value: $sliderValue, in: 0...100)
                    
                    Stepper(onIncrement: {
                        sliderValue+=1
                    }, onDecrement: {
                        sliderValue-=1
                    }) {
                        Text("Stepper")
                    }
                    Stepper(onIncrement: {
                        sliderValue+=5
                    }, onDecrement: {
                        sliderValue-=5
                    }) {
                        Text("Stepper 5")
                    }
                    
                    
                }
                
                
            }
            
        }
    }
}

#Preview {
    CTPDSS()
}
