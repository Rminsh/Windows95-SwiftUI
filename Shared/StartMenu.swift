//
//  StartMenu.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct StartMenu: View {
    
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                Spacer()
                
                Text("Windows95")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 0.7999122739, green: 0.8000505567, blue: 0.799903512, alpha: 1)))
                    .frame(width: 200.0, height: 160.0)
                    .rotationEffect(.degrees(270))
            }
            .frame(width: 30)
            .frame(maxHeight: .infinity)
            .background(Color(#colorLiteral(red: 0.3999532461, green: 0.4000268579, blue: 0.3999486566, alpha: 1)))
            
            VStack(spacing: 16) {
                
                Group {
                    AppIcon(
                        label: "Programs",
                        icon: "text.and.command.macwindow",
                        color: .blue)
                    AppIcon(
                        label: "Documents",
                        icon: "doc.text.fill",
                        color: Color(#colorLiteral(red: 1, green: 0.9988790154, blue: 0.4023227692, alpha: 1)))
                    AppIcon(
                        label: "Settings",
                        icon: "gearshape.fill",
                        color: Color(#colorLiteral(red: 1, green: 0.9988790154, blue: 0.4023227692, alpha: 1)))
                    AppIcon(
                        label: "Find",
                        icon: "doc.text.magnifyingglass",
                        color: .blue)
                    AppIcon(
                        label: "Help",
                        icon: "questionmark.square.fill",
                        color: Color(#colorLiteral(red: 0.8877131343, green: 0, blue: 0.7285981774, alpha: 1)))
                    
                    HStack(spacing: 12) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 25, height: 20)
                            Image(systemName: "macwindow")
                                .font(.system(size: 25))
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0.0, y: 0.0)
                            
                            Image(systemName: "hourglass")
                                .padding([.top, .trailing], 20.0)
                                .font(.system(size: 20))
                                .foregroundColor(.red)
                                .frame(width: 30, height: 20)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Run")
                                .font(.headline)
                                .foregroundColor(.black)
                                .fontWeight(.light)
                        }
                        
                        Spacer()
                    }
                }
                
                VStack(spacing: 0) {
                    Divider()
                        .background(Color(#colorLiteral(red: 0.4431372549, green: 0.4431372549, blue: 0.4431372549, alpha: 1)))
                    Divider()
                        .background(Color.white)
                }
                
                Group {
                    
                    HStack(spacing: 12) {
                        ZStack {
                            Image(systemName: "tv.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.blue)
                                .frame(width: 30, height: 30)
                                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0.0, y: 0.0)
                            
                            Image(systemName: "aqi.low")
                                .padding(.top, -3.0)
                                .font(.system(size: 12))
                                .foregroundColor(.white)
                                .frame(width: 30, height: 20)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Shut Down...")
                                .font(.headline)
                                .foregroundColor(.black)
                                .fontWeight(.light)
                        }
                        
                        Spacer()
                    }
                }
                
            }
            .padding()
            .frame(width: 210)
            .background(Color(#colorLiteral(red: 0.7999122739, green: 0.8000505567, blue: 0.799903512, alpha: 1)))
        }
        .frame(height: 355)
        .border(Color(#colorLiteral(red: 0.9842069745, green: 0.9843751788, blue: 0.9841964841, alpha: 1)))
    }
}

struct AppIcon: View {
    var label: String
    var icon: String
    var color: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 25))
                .foregroundColor(color)
                .frame(width: 30, height: 30)
                .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0.0, y: 0.0)
            
            VStack(alignment: .leading) {
                Text(label)
                    .font(.headline)
                    .foregroundColor(.black)
                    .fontWeight(.light)
            }
            
            Spacer()
        }
    }
}


struct StartMenu_Previews: PreviewProvider {
    static var previews: some View {
        StartMenu()
    }
}
