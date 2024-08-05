//
//  VideoListView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//
import SwiftUI

struct VideoListView: View {
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Group {
                        ForEach(0..<10) { i in
                            Image("images")
                                .padding()
                        }
                    }
                }
                .buttonStyle(.plain)
                .padding(.leading, 50)
            }
//            .scrollClipDisabled()
        } header: {
            Text("VideoListView")
                .font(.title3.bold())
                .padding(.vertical, 5)
                .padding(.leading, 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
        
        
    }
}

#Preview {
    VideoListView()
}
