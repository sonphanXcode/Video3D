//
//  VideosView.swift
//  TestDesVid
//
//  Created by SonPT61 on 6/8/24.
//

import SwiftUI
import AVKit

struct VideosView: View {
    
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "video1", withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding(5)
            }
            .padding(10)

        }
        .glassBackgroundEffect()
        .onAppear {
            isPlaying = false
        }
        .onDisappear {
            player.pause()
        }
        
    }
}

#Preview {
    VideosView(player: AVPlayer(url: Bundle.main.url(forResource: "video1", withExtension: "mp4")!), isPlaying: false)
}
