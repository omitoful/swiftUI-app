//
//  ContentView.swift
//  Sliderview
//
//  Created by 陳冠甫 on 2021/1/12.
//

import SwiftUI

struct ContentView: View {
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            
            SliderView(value: $red, label: "Red")
            SliderView(value: $green, label: "Green")
            SliderView(value: $blue, label: "Blue")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
