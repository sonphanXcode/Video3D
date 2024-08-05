//
//  CategoryListView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI

struct CategoryListView: View {
    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<10) { i in
                        NavigationLink(value: 3) {
                            PosterCardView()
                                .hoverEffect()
                        }
                        .frame(width: 300)
                        .accessibilityLabel("Flower")
                        .buttonStyle(.plain)
                    }
                }
                .padding(.vertical, 5)
                .padding(.leading, 50)
            }
//            .scrollClipDisabled()
            
        } header: {
            Text("Category List View")
                .font(.title3.bold())
                .padding(.leading, 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
    }
}

#Preview {
    CategoryListView()
        .frame(height: 200)
}
