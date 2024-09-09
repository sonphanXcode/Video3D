//
//  ImmersiveView.swift
//  TestDesVid
//
//  Created by SonPT61 on 9/8/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            
            guard let rootEntity = try? await Entity(named: "AAA_MainScene", in: realityKitContentBundle) else { return }
            
            content.add(rootEntity)
            
        }
    }
}
