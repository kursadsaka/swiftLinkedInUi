//
//  Posts.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 30.12.2023.
//

import SwiftUI

var postData: [PostData] = [
    .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00", text: "11111"),
    .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01", text: "11111"),
    .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02", text: "11111"),
    .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03", text: "11111"),
    .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04", text: "11111"),
    .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05", text: "11111"),
    .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00", text: "11111")
    ]

struct Posts: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                ForEach(postData, id:\.id) { data in
                    PostCard(data: data)
                }
            }
        }
    }
}

#Preview {
    Posts()
}
