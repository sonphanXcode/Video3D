//
//  HeroView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI
import AVKit

struct HeroView: View {
    
    @State private var playVideo: Bool = false
    var videoString: String = "VJvid1"
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Lorem ipsum dolor sit")
                    .frame(width: 562, height: 56)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundStyle(Color(.white))
                    .padding(.leading, -28)
                Text("Lorem ipsum dolor sit amet consectetur. Et lacinia facilisi tortor porta praesent. Quisque orci mattis molestie pellentesque et semper etiam nibh pharetra. ")
                    .frame(width: 500)
                    .font(.headline)
                    .foregroundStyle(Color(.white))
                NavigationLink(destination: {
                    PlayerView(videoString: videoString)
                        .immersiveEnvironmentPicker {
                            ImmersiveEnviromentPickerView()
                        }
//                        .ignoresSafeArea()
                }, label: {
                    HStack {
                        Text("Play now")
                            .font(.system(.body, design: .rounded)).bold()
                        Image(systemName: "play")
                            .bold()
                    }
                    .frame(width: 179, height: 44)
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(30)
                })
                .buttonStyle(.plain)
                .padding(.leading, 20)
                .padding(.top, 20)
            }
            Spacer()
        }
        .padding()
    }
}

//#Preview {
//    HeroView(videoString: "VJvid1")
//}

struct BtnPlayView: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            HStack {
                Text("Play Now")
                Image(systemName: "play")
            }
        }
    }
}

struct LogoView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            Image("image1")
                .resizable()
                .scaledToFit()
                .frame(width: 129, height: 24)
        }
    }
}
