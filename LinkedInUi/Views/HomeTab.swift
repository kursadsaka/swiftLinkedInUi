//
//  HomeTab.swift
//  LinkedInUi
//
//  Created by Kürşad Saka on 30.12.2023.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        VStack {
            SearchBar()
            PostEntry()
            Posts()
        }
    }
}

#Preview {
    HomeTab()
}
