//
//  Taskbar.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct Taskbar: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Divider()
                .frame(height: 2)
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 0.8374213576, green: 0.8374213576, blue: 0.8374213576, alpha: 1)))
            HStack(spacing: 0) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "square.split.2x2.fill")
                            .foregroundColor(.black)
                        Text("Start")
                            .foregroundColor(.black)
                    }
                }.padding(.all, 8)
                
                Spacer()
                
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(.black)
                    Image(systemName: "speaker.wave.2.fill")
                        .foregroundColor(.black)
                    Image(systemName: "wifi")
                        .foregroundColor(.black)
                    Text("9:41")
                        .foregroundColor(.black)
                }
                .padding(.all, 12)
            }
            .frame(height: 30)
            .frame(maxWidth: .infinity)
            .background(Color(#colorLiteral(red: 0.7529411765, green: 0.7529411765, blue: 0.7529411765, alpha: 1)))
        }
    }
}

struct Taskbar_Previews: PreviewProvider {
    static var previews: some View {
        Taskbar()
    }
}
