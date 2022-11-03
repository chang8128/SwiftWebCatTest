//
//  ContentView.swift
//  WebCatTest
//
//  Created by 常志平 on 7/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image(systemName: "book.circle").resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(Color(UIColor.systemRed)).opacity(0.8)
                    Text("Leave something here")
                        .font(.headline).bold()
                }
                HStack {
                    Image(systemName: "text.book.closed.fill").resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(Color(UIColor.systemYellow)).opacity(0.8)
                    Text("something")
                        .font(.headline).bold()
                }
                NavigationLink(destination: PhotoCat()) {
                    HStack {
                        Image(systemName: "books.vertical.circle.fill").resizable()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color(UIColor.systemBlue)).opacity(0.8)
                        Text("Link to photo of cat")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
