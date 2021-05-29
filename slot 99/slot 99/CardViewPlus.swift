//
//  CardViewPlus.swift
//  slot 99
//
//  Created by 陳冠甫 on 2021/1/16.
//

import SwiftUI

struct CardViewPlus: View {
    
    @Binding var symbol:String
    @Binding var background:Color
    
    private let trans: AnyTransition = AnyTransition.move(edge:.bottom)
    
    var body: some View {
        
        VStack {
            if symbol == "apple" {
                Image(symbol)
                    .resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .transition(trans)
            } else if symbol == "cherry" {
                Image(symbol)
                    .resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .transition(trans)
            }else{
                Image(symbol)
                    .resizable()
                    .aspectRatio(1,contentMode: .fit)
                    .transition(trans)
            }
        }
        .background(background.opacity(0.5))
        .cornerRadius(20)
    }
}

struct CardViewPlus_Previews: PreviewProvider {
    static var previews: some View {
        CardViewPlus(symbol: Binding.constant("cherry"), background: Binding.constant(Color.green))
    }
}
