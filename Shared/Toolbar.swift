//
//  Toolbar.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct Toolbar: View {
    var title: String
    var icon: String
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 4) {
                Group {
                    Image(systemName: icon)
                        .font(.system(size: 15, weight: .semibold))
                    Text(title)
                        .font(.headline)
                }
                
                Spacer()
                
                ToolbarControls()
            }
            .foregroundColor(.white)
            .padding(.leading)
            .padding(.trailing, 12)
            .frame(height: 28)
        }
        .modifier(WindowBar())
    }
}

struct ToolbarControls: View {
    var body: some View {
        HStack(spacing: 3) {
            ToolbarControlIcon {
                VStack {
                    Spacer()
                    Image(systemName: "minus")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.black)
                }
            }
            
            ToolbarControlIcon {
                Image(systemName: "square")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.black)
            }
            
            ToolbarControlIcon {
                Image(systemName: "xmark")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.black)
            }
        }
    }
}

struct ToolbarControlIcon<Content: View>: View {
    let content: () -> Content
    
    var body: some View {
        Rectangle()
            .overlay(
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 0.7601441741, green: 0.7803723216, blue: 0.7886850238, alpha: 1)))
                    .padding(.all ,1)
            )
            .overlay(
                content()
            )
            .foregroundColor(Color(#colorLiteral(red: 0.9185282588, green: 0.9185282588, blue: 0.9185282588, alpha: 1)))
            .frame(width: 16, height: 16)
            .shadow(radius: 2)
            
    }
}

struct WindowBar: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color(#colorLiteral(red: 0.0072173113, green: 0.003170318436, blue: 0.6547220349, alpha: 1)))
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 4)
            .overlay(
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color.black.opacity(0.3))
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(Color.black.opacity(0.3))
                        .blur(radius: 2)
                    Spacer()
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(Color.black.opacity(0.3))
                        .blur(radius: 4)
                }
            )
    }
}


struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar(title: "My Computer", icon: "pc")
    }
}
