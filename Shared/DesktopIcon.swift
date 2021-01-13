//
//  DesktopIcon.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct DesktopIcon: View {
    var label: String
    var icon: String
    var color: Color
    var backgroundColors: [Color]
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(color)
                .shadow(color: color.opacity(0.2), radius: 5, x: 0, y: 2)
                .padding(.all ,10)
                .frame(width: 38, height: 38)
                .background(
                    LinearGradient(gradient:
                                    Gradient(colors: backgroundColors),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 9))
            
            Text(label)
                .font(.footnote)
                .foregroundColor(.white)
        }
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
    }
}

struct DesktopIcon_Previews: PreviewProvider {
    static var previews: some View {
        DesktopIcon(label: "My Computer", icon: "pc", color: .white, backgroundColors: [.blue, .red])
            .background(Color.blue)
    }
}
