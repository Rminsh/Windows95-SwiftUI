//
//  Desktop.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct Desktop: View {
    
    @State var showMyComputer = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack(spacing: 24) {
                        DesktopIcon(label: "My Documents", icon: "doc.fill", color: Color(#colorLiteral(red: 0.9483403563, green: 0.9496279359, blue: 0.9689514041, alpha: 1)), backgroundColors: [Color(#colorLiteral(red: 0.9333333333, green: 0.8509803922, blue: 0.4823529412, alpha: 1)), Color(#colorLiteral(red: 0.9647058824, green: 0.7490196078, blue: 0.4666666667, alpha: 1))])
                        
                        DesktopIcon(label: "My Computer", icon: "pc", color: Color(#colorLiteral(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)), backgroundColors: [Color(#colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1))])
                            .onTapGesture {
                                showMyComputer.toggle()
                            }
                        
                        DesktopIcon(label: "Outlook", icon: "mail.stack.fill", color: Color(#colorLiteral(red: 0.9483403563, green: 0.9496279359, blue: 0.9689514041, alpha: 1)), backgroundColors: [Color(#colorLiteral(red: 0.05490196078, green: 0.5921568627, blue: 0.9764705882, alpha: 1)), Color(#colorLiteral(red: 0.1137254902, green: 0.5058823529, blue: 0.9921568627, alpha: 1))])
                        
                        DesktopIcon(label: "Recycle Bin", icon: "trash.fill", color: Color(#colorLiteral(red: 0.2, green: 0.5058823529, blue: 0.2, alpha: 1)), backgroundColors: [Color(#colorLiteral(red: 0.9450980392, green: 0.9803921569, blue: 0.9607843137, alpha: 1)), Color(#colorLiteral(red: 0.5843137255, green: 0.5882352941, blue: 0.6509803922, alpha: 1))])
                        
                        DesktopIcon(label: "Internet Explorer", icon: "globe", color: Color(#colorLiteral(red: 0.9483403563, green: 0.9496279359, blue: 0.9689514041, alpha: 1)), backgroundColors: [Color(#colorLiteral(red: 0.05490196078, green: 0.5921568627, blue: 0.9764705882, alpha: 1)), Color(#colorLiteral(red: 0.1137254902, green: 0.5058823529, blue: 0.9921568627, alpha: 1))])
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            
            if showMyComputer {
                Window(title: "My Computer", icon: "pc") {
                    MyComputer()
                }
                .draggable()
            }
        }
    }
}

struct Desktop_Previews: PreviewProvider {
    static var previews: some View {
        Desktop()
    }
}
