//
//  SearchBar.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 6.09.2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            // Profile image
            Image("demo")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            // Search bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .foregroundColor(.gray)
                        Spacer()
                    }.padding()
                }

            // Message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 30, height: 30)
        }.padding(.top)
    }
}

#Preview {
    SearchBar()
}
