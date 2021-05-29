//
//  ContentView.swift
//  slot 99
//
//  Created by 陳冠甫 on 2021/1/13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var score = 1000
    @State private var win = false
    @State private var symbols = ["apple","star","cherry"]
    @State private var num = Array(repeating: 0, count: 9)
    @State private var backgrounds = Array(repeating: Color.white, count: 9)
    var betAmount = 5
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 200/255,green: 143/255, blue: 25/255))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Rectangle()
                .foregroundColor(Color(red: 228/255,green: 195/255 ,blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Spacer()
                
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("SwiftUI SLot Plus")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(1.8)
                
                
                Text("score: " + String(score))
                    .bold()
                    .padding(10)
                    .padding([.leading, .trailing], 10)
                    .background(win ? Color.green.opacity(0.5) : Color.white.opacity(0.5))
                    .animation(.none)
                    .cornerRadius(20)
                    .scaleEffect(win ? 1.2 : 1)
                    .animation(.spring(response: 0.7, dampingFraction: 0.5))
                
                
                Spacer()
                
                VStack{
                    HStack{
                        
                        CardViewPlus(symbol: $symbols[num[0]],
                                     background: $backgrounds[0])
                        
                        CardViewPlus(symbol: $symbols[num[1]],
                                     background: $backgrounds[1])
                        
                        CardViewPlus(symbol: $symbols[num[2]],
                                     background: $backgrounds[2])
                        
                    }
                    HStack{
                        
                        CardViewPlus(symbol: $symbols[num[3]],
                                     background: $backgrounds[3])
                        
                        CardViewPlus(symbol: $symbols[num[4]],
                                     background: $backgrounds[4])
                        
                        CardViewPlus(symbol: $symbols[num[5]],
                                     background: $backgrounds[5])
                        
                    }
                    HStack{
                        
                        CardViewPlus(symbol: $symbols[num[6]],
                                     background: $backgrounds[6])
                        
                        CardViewPlus(symbol: $symbols[num[7]],
                                     background: $backgrounds[7])
                        
                        CardViewPlus(symbol: $symbols[num[8]],
                                     background: $backgrounds[8])
                        
                    }
                }.padding()
                
                
                
                Spacer()
                
                HStack (spacing: 20){
                    VStack{
                        Button(action: {
                            
                            self.processResult()
                            
                        }, label: {
                            Text("spin")
                                .foregroundColor(.white)
                                .bold()
                                .padding(10)
                                .padding([.leading, .trailing], 20)
                                .background(Color.pink)
                                .cornerRadius(30)
                        })
                        Text("\(betAmount) scores").padding(.top,10).font(.footnote)
                    }
                    VStack{
                        Button(action: {
                            
                            self.processResult(true)
                            
                        }, label: {
                            Text("max spin")
                                .foregroundColor(.white)
                                .bold()
                                .padding(10)
                                .padding([.leading, .trailing], 20)
                                .background(Color.pink)
                                .cornerRadius(30)
                        })
                        Text("\(betAmount * 5) scores").padding(.top,10).font(.footnote)
                    }
                }
                Spacer()
            }
        }
        .animation(.easeOut)
    }
        
        func processResult(_ isMax:Bool = false) {
            
            self.backgrounds = self.backgrounds.map{_ in Color.white}
            
            if isMax {
                self.num = self.num.map{_ in Int.random(in: 0...self.symbols.count - 1)}
            } else {
                self.num[3] = Int.random(in: 0...self.symbols.count - 1)
                self.num[4] = Int.random(in: 0...self.symbols.count - 1)
                self.num[5] = Int.random(in: 0...self.symbols.count - 1)
            }
            
            processWin(isMax)
            
        }
        func processWin(_ isMax:Bool = false) {
            
            var matches = 0
            
            if !isMax {
                
                //single spin
                if isMatch(3, 4, 5) {
                    //won
                    matches += 1}
                
            } else {
                //for max spin
                
                //top row
                if isMatch(0, 1, 2){
                    //won
                    matches += 1}
                //middle row
                if isMatch(3, 4, 5){
                    //won
                    matches += 1}
                //Bottom row
                if isMatch(6, 7, 8){
                    //won
                    matches += 1}
                //Diagnal top left to bottom right
                if isMatch(0, 4, 8){
                    //won
                    matches += 1}
                //Diagnal top right to bottom left
                if isMatch(2, 4, 6){
                    //won
                    matches += 1}
            }
            
            self.win = false
            
            // Check matches and distribute score
            if matches > 0 {
                // At least 1 win
                self.score += matches * betAmount * 2
                self.win = true
            }
            else if !isMax {
                // 0 wins, max spin
                self.score -= betAmount
            }
            else {
                // 0 wins, max spin
                self.score -= betAmount * 5
            }
        }
            
            func isMatch(_ index1:Int,_ index2:Int,_ index3:Int) -> Bool{
                if self.num[index1] == self.num[index2] && self.num[index2] == self.num[index3]{
                    self.backgrounds[index1] = Color.green
                    self.backgrounds[index2] = Color.green
                    self.backgrounds[index3] = Color.green
                    
                    return true
                }
                
                return false
        }
    


    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
