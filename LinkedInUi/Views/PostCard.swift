//
//  PostCard.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 30.12.2023.
//

import SwiftUI

struct SocialView {
    var id: Int
    var image: String
    var title: String
}

let socialViews: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostData(id: 1, Image: "02", title: "Hitesh Choudhary", followers: 5, profileImage: "1", text: "Papa was a copper, and her mama was a hippy.")

struct PostCard: View {
    let data: PostData
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image(data.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text(data.text)
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                ForEach(socialViews, id: \.id) { view in
                    VStack {
                        Image(systemName: view.image)
                        Text(view.title)
                    }.frame(maxWidth: .infinity)
                }
            }.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    PostCard(data: samplePostData)
}
