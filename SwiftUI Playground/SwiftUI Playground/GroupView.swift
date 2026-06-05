//
//  Group.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 05/06/26.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ScrollView(showsIndicators : false){
            Group{
                
                
                VStack{
                    ForEach (0..<10){i in
                        Text("\(i)").padding(10)
                            .font(.system(size: 30))
                        
                    }
                }
                VStack{
                    ForEach (10..<20){i in
                        Text("\(i)").padding(10)
                            .font(.system(size: 30))
                        
                    }
                }
                
            }
       
            
            
                
            
        
    }
        
    }
}

#Preview {
    GroupView()
}
