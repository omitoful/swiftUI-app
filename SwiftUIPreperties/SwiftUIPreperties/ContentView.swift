//
//  ContentView.swift
//  SwiftUIPreperties
//
//  Created by 陳冠甫 on 2021/1/9.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 999
    @State private var text = "GOOD!"
    
    var body: some View {
        VStack{
            Image("Breakfast")
                .resizable()
                .cornerRadius(30)
                // 先坐上面再做下面
                .padding()
                .shadow(radius: 20)
            
            HStack{
                
                Button(action: {
                    self.isHearted.toggle()
                    
                    if self.isHearted {
                        numHearts += 1
                    }else{
                        numHearts -= 1
                    }
                    
                }) {
                    if isHearted{
                        Image(systemName: "heart.fill")
                        
                    }else{
                        Image(systemName: "heart")
                    }
                }
                
                Text(String(numHearts))
            }
            Spacer()
            
            if isHearted{
                Text(String("GOOD!"))
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.red)
            }else{
                Text(String("GOOD!"))
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
