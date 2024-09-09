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
                ZStack {
                    Image("image")
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading) {
                        LogoView()
                            .frame(width: 200, height: 58)
                            .cornerRadius(30)
                            .padding(.top, 50)
                            .padding(.leading, 30)
                            
                        HeroView()
                            .frame(height: 300)
                            .padding(.leading, 0)
                        VideoListView()
//                            .buttonStyle(.plain)
                            
                    }
                    .padding()
                }
                
            }
        }
    }
    
}

#Preview {
    WatchNowView()
}
