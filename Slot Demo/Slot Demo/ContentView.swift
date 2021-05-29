//
//  ContentView.swift
//  Slot Demo
//
//  Created by 陳冠甫 on 2021/1/10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    private var symbols = ["apple","cherry","star"]
    @State private var num = [0 ,0 ,0]
    
    private var betAmount = 5
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(Color.init(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .foregroundColor(Color.init(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle.init(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Spacer()
                
                // Title:
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                // Credits counter
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()
                
                // Cards
                HStack{
                    Spacer()
                    Image(symbols[num[0]])
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image(symbols[num[1]])
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image(symbols[num[2]])
                        .resizable()
                        .aspectRatio(1,contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Spacer()
                }
                
                Spacer()
                
                // Button
                Button(action: {
                    
                    self.num[0] = Int.random(in: 0...self.symbols.count - 1)
                    self.num[1] = Int.random(in: 0...self.symbols.count - 1)
                    self.num[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    // check winnings
                    
                    if self.num[0] == self.num[1] && self.num[1] == self.num[2]{
                        self.credits += self.betAmount * 10
                    }else{
                        self.credits -= self.betAmount
                    }
                    
                }, label: {
                    Text("SPIN")
                        .bold()
                        .foregroundColor(.white)
                        .padding(10)
                        .padding([.leading,.trailing],30)
                        .background(Color.pink)
                        .cornerRadius(30)
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
