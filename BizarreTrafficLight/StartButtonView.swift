//
//  StartButtonView.swift
//  BizarreTrafficLight
//
//  Created by P Z on 20/10/2022.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(400)
        .overlay(
            RoundedRectangle(cornerRadius: 400)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
