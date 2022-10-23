//
//  ColorCircle.swift
//  BizarreTrafficLight
//
//  Created by P Z on 19/10/2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let opacity: Double
    let color: Color
    
    var body: some View {
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
    
struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ColorCircleView(opacity: 1, color: .red)
            
        }
    }
}
