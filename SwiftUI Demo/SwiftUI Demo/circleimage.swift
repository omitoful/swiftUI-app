//
//  circleimage.swift
//  SwiftUI Demo
//
//  Created by 陳冠甫 on 2021/1/13.
//

import SwiftUI

struct circleimage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct circleimage_Previews: PreviewProvider {
    static var previews: some View {
        circleimage()
    }
}
