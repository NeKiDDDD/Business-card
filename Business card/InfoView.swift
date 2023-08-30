//
//  InfoView.swift
//  Business card
//
//  Created by Nikita Kuznetsov on 30.08.2023.
//

import SwiftUI

struct ContactArea: View {
    
    let imageName: String
    let text: String
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 45)
            .frame(width: 350, height: 45)
            .foregroundColor(.white)
            .overlay(
                RoundedRectangle(cornerRadius: 45).stroke(Color.black, lineWidth: 1)
            )
        HStack {
            Image(systemName: imageName)
                .foregroundColor(color)
            Text(text)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactArea(imageName: "phone", text: "123", color: .blue)
    }
}
