//
//  PNLS.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 06/06/26.
//

import SwiftUI

struct PopOverView: View {
    var body: some View {
        Text("This is PopOver").font(.system(size: 50, weight: .bold))
    }
}
struct BottomSheetView: View {
    var body: some View {
        Text("This is Bottom Sheet").font(.system(size: 50, weight: .bold))
    }
}
struct Nav1: View {
    var body: some View {
        List {
            Section(header: Text("Section 1")) {
                HStack {
                    Text("Item 1")
                    Image(systemName: "heart.fill")
                }
                Text("Item 2")
                Text("Item 3")
            }
            Section(header: Text("Section 2")) {
                Text("Item 4")
                Text("Item 5")
                Text("Item 6")
            }
            Section(header: Text("Section 3")) {
                Text("Item 7")
                Text("Item 8")
                Text("Item 9")
            }
        }
    }
}

struct PNLS: View {
    @State private var isPresentedPO: Bool = false
    @State private var isPresentedBS: Bool = false
    @State private var name: String = ""
    var body: some View {
        NavigationStack {
        VStack {
            Button(action: {
                self.isPresentedPO.toggle()
            }) {
                ZStack {
                    Rectangle().fill(Color.red).frame(width: 250, height: 50)
                        .cornerRadius(10)
                    Text("Show PopOver").font(.system(size: 30, weight: .bold)).foregroundStyle(Color.white)
                }
            }
            Button(action: {
                self.isPresentedBS.toggle()
            }) {
                ZStack {
                    Rectangle().fill(Color.blue).frame(width: 300, height: 50)
                        .cornerRadius(10)
                    Text("Show Bottom Sheet").font(.system(size: 30, weight: .bold)).foregroundStyle(Color.white)
                }

            }
            .sheet(isPresented: $isPresentedBS) {
                BottomSheetView()
            }
            .popover(isPresented: $isPresentedPO) {
                PopOverView()
            }
            
            Text("Navigation Without Value")
                NavigationLink(destination: Nav1(), label: {
                    ZStack {
                        Rectangle().fill(Color.green).frame(width: 250, height: 50)
                            .cornerRadius(10)
                        Text("List And Section").font(.system(size: 30, weight: .bold)).foregroundStyle(Color.white)
                    }
                })
            Text("Navigation With Value")
            TextField("Name", text: $name)
                .frame(width: 250, height: 50)
                .border(Color.gray, width: 1).padding(10)
                NavigationLink(value: name) {
                    ZStack {
                        Rectangle().fill(Color.orange).frame(width: 250, height: 50)
                            .cornerRadius(10)
                        Text("Submit").font(.system(size: 30, weight: .bold)).foregroundStyle(Color.white)
                    }                }.navigationDestination(for: String.self) {
                    value in
                    Text("Hey There! \(value)")
                }
            }
        }
    }
}

#Preview {
    PNLS()
}
