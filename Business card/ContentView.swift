//
//  ContentView.swift
//  Business card
//
//  Created by Nikita Kuznetsov on 29.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.68, blue: 0.38)
                .ignoresSafeArea()
            
            VStack {
                    Image("IMG")
                        .resizable()
                        .frame(width: 150, height: 200, alignment: .center)
                        .aspectRatio( contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 2)
                        )
                Text("Nikita Kuznetsov")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .font(.title)
                    .bold()
                Divider()
                ZStack {
                    ContactArea(imageName: "phone.fill", text: "+995 511 112 657", color: .green)
                }
                .padding()
                ZStack {
                    ContactArea(imageName: "envelope.fill", text: "la2life1234@gmail.com", color: .yellow)
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


