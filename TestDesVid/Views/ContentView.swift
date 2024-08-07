//
//  ContentView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State private var selectedTab: Tabs = .watchNow
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("WatchNowView", systemImage: "play", value: .watchNow) {
                WatchNowView()
            }
            
            Tab("Library", systemImage: "folder.fill", value: .library) {
                LibraryView()
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
