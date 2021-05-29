//
//  ContentView.swift
//  SwiftUIModify
//
//  Created by 陳冠甫 on 2021/1/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Modifiy Me! Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!Modifiy Me!")
            .fontWeight(.heavy)
            .foregroundColor(Color.purple)
            .multilineTextAlignment(.center)
            .padding(.all, 20.0)
        
        VStack{
            Image("Breakfast")
                .resizable()
                .cornerRadius(30)
                // 先坐上面再做下面
                .padding()
                .shadow(radius: 20)
                
            Text("Modifiy Me!")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 0.1, x: 2, y: 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
