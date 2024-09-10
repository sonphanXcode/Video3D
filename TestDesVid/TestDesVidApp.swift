//
//  TestDesVidApp.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//

import SwiftUI
import Observation

@main
struct TestDesVidApp: App {
    
    @State private var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}

@Observable
class ViewModel {
    
    var videoString: String = "VJvid1"
    
    let listVietJet: [VietJetList] = [
                                    VietJetList(image: "image2", description: "Lorem ipsum dolor "),
                                    VietJetList(image: "image3", description: "Lorem ipsum dolor sit amet consectetur.", videoString: "VJvid2"),
                                    VietJetList(image: "image4", description: "Lorem"),
                                    VietJetList(image: "Banner 14 1", description: "Lorem ipsum dolor sit amet consectetur."),
                                    VietJetList(image: "Banner 8 1", description: "Lorem ipsum dolor sit amet consectetur."),
                                    VietJetList(image: "banner 6", description: "Lorem ipsum dolor sit amet consectetur.")
                                    ]
}

struct VietJetList: Identifiable {
    var id: UUID = UUID()
    var image: String
    var description: String
    var videoString: String = "VJvid1"
}
