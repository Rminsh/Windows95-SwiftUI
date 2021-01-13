//
//  ContentView.swift
//  Shared
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showStartMenu = false
    
    var body: some View {
        ZStack {
            Desktop()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.5019607843, blue: 0.5137254902, alpha: 1)), Color(#colorLiteral(red: 0.02352941176, green: 0.6588235294, blue: 0.5960784314, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
            VStack(spacing: 0) {
                Spacer()
                HStack {
                    if showStartMenu {
                        StartMenu()
                    }
                    Spacer()
                }
                Taskbar(showStartMenu: $showStartMenu)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 500, height: 550)
    }
}
