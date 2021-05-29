//
//  ContentView.swift
//  swiftUISFSymbols
//
//  Created by 陳冠甫 on 2021/1/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            Image(systemName: "flame.fill")
            
            Text("LIKE")
            
            // sfsymbol.com
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
