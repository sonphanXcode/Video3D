//
//  PosterCardView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI

struct PosterCardView: View {
    var body: some View {
        VStack {
            Image("image2")
                .resizable()
                .scaledToFill()
                .cornerRadius(10.0)
            Text("flower")
                .font(.title3)
                .lineLimit(1)
        }
    }
}
