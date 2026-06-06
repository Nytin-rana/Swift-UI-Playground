//
//  SystemIcons.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 05/06/26.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {

            
            
            List {
                HStack {
                    Text("Heart")
                    Image(systemName: "heart")
                }
                HStack {
                    Text("Upload")
                    Image(systemName: "square.and.arrow.up")
                }
                HStack {
                    Text("Microphone")
                    Image(systemName: "microphone")
                }
                HStack {
                    Text("Pencil")
                    Image(systemName: "pencil")
                }
                HStack {
                    Text("Trash")
                    Image(systemName: "trash")
                }
                HStack {
                    Text("Xmark")
                    Image(systemName: "xmark")
                }
                HStack {
                    Text("Keyboard")
                    Image(systemName: "keyboard")
                }
                HStack {
                    Text("Download")
                    Image(systemName: "square.and.arrow.down")
                }
                HStack {
                    Text("Camera")
                    Image(systemName: "camera")
                }
                HStack {
                    Text("Photo")
                    Image(systemName: "photo")
                }
                HStack {
                    Text("Person")
                    Image(systemName: "person")
                }
                HStack {
                    Text("Home")
                    Image(systemName: "house")
                }
                Text("See all system icons at: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/symbol-reference/")
            }
            
        }
    }

#Preview {
    SystemIcons()
}
