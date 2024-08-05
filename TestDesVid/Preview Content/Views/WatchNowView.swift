//
//  WatchNowView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI

struct WatchNowView: View {
    
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("123123")
                }
                
                VStack(spacing: 20) {
                    VideoListView()
                    
                    CategoryListView()
                    
                    LibraryView()
                }
            }
        }
    }
    
}

#Preview {
    WatchNowView()
}
