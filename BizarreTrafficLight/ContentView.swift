//
//  ContentView.swift
//  BizarreTrafficLight
//
//  Created by P Z on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated = false
    
    
    
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
            
            
            ZStack {
                Color.black.opacity(isActivated ? 0.5 : 0)
                VStack {
                    Spacer()
                    Circle()
                        .fill(Color.blue)
                        .frame(width: isActivated ? 50 : 65, height: isActivated ? 50 : 65)
                        .shadow(radius: 5)
                        .overlay(Image(systemName: "1.circle.fill"))
                        .foregroundColor(.white)
                        .offset(x: 0, y: -10)
                        .onTapGesture {
                            withAnimation(.spring()){
                                self.isActivated.toggle()
                            }
                        }
                }
            }
            .edgesIgnoringSafeArea(isActivated ? .all : .horizontal)
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
