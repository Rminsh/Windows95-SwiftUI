//
//  ContentView.swift
//  Shared
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Desktop()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.5019607843, blue: 0.5137254902, alpha: 1)), Color(#colorLiteral(red: 0.02352941176, green: 0.6588235294, blue: 0.5960784314, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
            Taskbar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 500, height: 550)
    }
}
