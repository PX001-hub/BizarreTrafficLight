//
//  ColorCircle.swift
//  BizarreTrafficLight
//
//  Created by P Z on 19/10/2022.
//

import SwiftUI

struct ColorCircleView: View {
    var body: some View {
        ZStack {
            Color.white
            Circle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
                .offset(x: 0, y: -250)
            Circle()
                .fill(Color.yellow)
                .frame(width: 150, height: 150)
                .offset(x: 0, y: -60)
            Circle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
                .offset(x: 0, y: 120)
            
        }
    }
    
    struct ColorCircle_Previews: PreviewProvider {
        static var previews: some View {
            ColorCircleView()
        }
    }
}
