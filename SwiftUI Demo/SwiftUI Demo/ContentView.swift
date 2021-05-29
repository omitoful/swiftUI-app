//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by 陳冠甫 on 2021/1/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            circleimage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
