//
//  InvitationCard.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 6.09.2023.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: Int.random(in: 12...103), image: "01")

struct InvitationCard: View {
    let invitation: NetworkModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(invitation.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                Text(invitation.name)
                    .font(.body)
                Text(invitation.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("⚭ \(invitation.mutual) mutual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150)
            HStack {
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
            }.padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

#Preview {
    InvitationCard(invitation: sampleData)
}
