//
//  MyComputer.swift
//  Windows95
//
//  Created by armin on 1/13/21.
//

import SwiftUI

struct MyComputer: View {
    @State var selection: Set<Int> = [0]
        var body: some View {
            Finder()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
}

struct Finder: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 12) {
                Text("File")
                Text("Edit")
                Text("View")
                Text("Help")
                Spacer()
            }
            .foregroundColor(.black)
            .font(.system(size: 14))
            .padding(.horizontal)
            .frame(height: 28)
            .background(Color(#colorLiteral(red: 0.7560177445, green: 0.7843980193, blue: 0.7886149287, alpha: 1)))
            
            Divider()
                .frame(height: 2)
                .background(Color.black)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 40) {
                    FolderItem(label: "SD Card (A:)", icon: "sdcard.fill", color: Color(#colorLiteral(red: 0.4352941176, green: 0.4352941176, blue: 0.6392156863, alpha: 1)))
                    FolderItem(label: "(C:)", icon: "internaldrive.fill", color: Color(#colorLiteral(red: 0.737254902, green: 0.7803921569, blue: 0.8039215686, alpha: 1)))
                    FolderItem(label: "(D:)", icon: "opticaldiscdrive.fill", color: Color(#colorLiteral(red: 0.737254902, green: 0.7803921569, blue: 0.8039215686, alpha: 1)))
                    FolderItem(label: "(E:)", icon: "externaldrive.connected.to.line.below.fill", color: .blue)
                    FolderItem(label: "Control Panel", icon: "folder.fill.badge.gear", color: Color(#colorLiteral(red: 0.9647058824, green: 0.7490196078, blue: 0.4666666667, alpha: 1)))
                    FolderItem(label: "Printers", icon: "printer.fill.and.paper.fill", color: Color(#colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.3607843137, alpha: 1)))
                }
                .padding()
            }
        }
        .background(Color.white)
    }
}

struct FolderItem: View {
    @State var label: String
    @State var icon: String
    @State var color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(color)
                .shadow(color: color.opacity(0.2), radius: 5, x: 0, y: 2)
            Text(label)
                .font(.body)
                .foregroundColor(.black)
        }
        .frame(width: 92)
    }
}

struct MyComputer_Previews: PreviewProvider {
    static var previews: some View {
        MyComputer()
    }
}

