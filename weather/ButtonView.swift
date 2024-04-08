//
//  ButtonView.swift
//  weather
//
//  Created by Muhammad Zikrurridho Afwani on 07/04/24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    ButtonView(title: "Weather Button", backgroundColor: .mint)
}
