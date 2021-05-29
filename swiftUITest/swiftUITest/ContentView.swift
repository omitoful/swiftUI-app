//
//  ContentView.swift
//  swiftUITest
//
//  Created by 陳冠甫 on 2021/1/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
        
            HStack(alignment: .top, spacing: 20){
                Image("apple")
                
                Text("Hello")
                
                Button(action: {
                    
                }, label: {
                    Image("donut")
                        .renderingMode(.original)
                })
            }
            Spacer()
            
            ZStack{
                Image("lemon")
                Text("Hello")
            }
            Spacer()
        }
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
            Spacer()
            Text("Hello")
            Spacer()
            Text("Hello")
            Spacer()
            Text("Hello")
            Spacer()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
