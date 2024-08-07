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
    
    var body: some View {
        ZStack {
            Image("spacex")
                .resizable()
                .scaledToFill()
            HStack {
                VStack(alignment: .leading) {
                    Text("SpaceX designs, manufactures and launches advanced rockets and spacecraft. The company was founded in 2002 to revolutionize space technology,...")
                        .frame(width: 500)
                        .font(.title3)
                        .foregroundStyle(Color(.white))
                        .bold()
                        .padding(.leading, 50)
                    
                    NavigationLink(destination: {
                        VideosView()
                    }, label: {
                        Image(systemName: "play")
                    })
                    .padding(.leading, 70)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HeroView()
}
