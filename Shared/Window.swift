//
//  Window.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct Window<Content: View>: View {
    var title: String
    var icon: String
    let content: () -> Content
    
    var body: some View {
        VStack(spacing: 0) {
            Toolbar(title: title, icon: icon)
            content()
        }
        .frame(width: 620, height: 420)
        .background(Color.white)
        .overlay(
            Rectangle()
                .stroke(Color(#colorLiteral(red: 0.7601441741, green: 0.7803723216, blue: 0.7886850238, alpha: 1)), lineWidth: 3)
                .padding(1)
        )
    }
}

struct DraggableView: ViewModifier {
    @State var offset = CGPoint(x: 0, y: 0)
    
    func body(content: Content) -> some View {
        content
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged { value in
                    self.offset.x += value.location.x - value.startLocation.x
                    self.offset.y += value.location.y - value.startLocation.y
            })
            .offset(x: offset.x, y: offset.y)
    }
}

extension View {
    func draggable() -> some View {
        return modifier(DraggableView())
    }
}
