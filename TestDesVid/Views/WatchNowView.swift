//
//  WatchNowView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI

struct WatchNowView: View {
    
    @State private var videoString: String = "VJvid1"
    @Environment(ViewModel.self) private var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ZStack {
                    Image("photo-3-1 2")
                        .resizable()
                        .scaledToFill()
                    VStack(alignment: .leading) {
                        LogoView()
                            .frame(width: 200, height: 58)
                            .cornerRadius(30)
                            .padding(.top, 50)
                            .padding(.leading, 30)
                            
                        HeroView(videoString: viewModel.videoString)
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
