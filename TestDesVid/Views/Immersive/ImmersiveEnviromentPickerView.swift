//
//  ImmersiveEnviromentPickerView.swift
//  TestDesVid
//
//  Created by SonPT61 on 8/8/24.
//

import SwiftUI
import RealityKit
import os

struct ImmersiveEnviromentPickerView: View {
    var body: some View {
        EnvironmentPickerButton()
    }
}

struct EnvironmentPickerButton: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var body: some View {
        Button {
            Task {
                await openImmersiveSpace(id: "ImmersiveSpace")
            }
        } label: {
            HStack {
                Image(systemName: "infinity.circle")
                Text("Open Immersive Space")
            }
        }

    }
}
