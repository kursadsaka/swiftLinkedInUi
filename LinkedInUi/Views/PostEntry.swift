//
//  PostEntry.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 30.12.2023.
//

import SwiftUI

struct PostEntry: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Event")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    PostEntry()
}
