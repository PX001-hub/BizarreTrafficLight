//
//  ContentView.swift
//  BizarreTrafficLight
//
//  Created by P Z on 19/10/2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green, off
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.off
    
    private func nextColor() {
        
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        case .off: currentLight = .red
        }
    }
    
}
    
    extension ContentView {
        var body: some View {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    ColorCircleView(opacity: currentLight == .red ? 1 : 0.3, color: .red)
                    ColorCircleView(opacity: currentLight == .yellow ? 1 : 0.3, color: .yellow)
                    ColorCircleView(opacity: currentLight == .green ? 1 : 0.3, color: .green)
                    Spacer()
                    StartButtonView(title: buttonTitle) {
                        if buttonTitle == "START" {
                            buttonTitle = "NEXT"
                        }
                        nextColor()
                    }
                }
                .padding()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }



