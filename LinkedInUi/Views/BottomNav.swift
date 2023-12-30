//
//  BottomNav.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 30.12.2023.
//

import SwiftUI

struct BottomNav: View {
    var body: some View {
        TabView {
            HomeTab()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            MyNetworkTab()
                .tabItem {
                    Label("My Network", systemImage: "person.2.fill")
                }
            Text("Post")
                .tabItem {
                    Label("Post", systemImage: "plus.app.fill")
                }
            Text("Notifications")
                .tabItem {
                    Label("Notifications", systemImage: "bell.badge.fill")
                }
            Text("Jobs")
                .tabItem {
                    Label("Jobs", systemImage: "briefcase.fill")
                }
        }
    }
}

#Preview {
    BottomNav()
}
