//
//  VideoListView.swift
//  TestDesVid
//
//  Created by SonPT61 on 5/8/24.
//
import SwiftUI

struct VideoListView: View {
    
    @Environment(ViewModel.self) private var viewModel
    
    @State private var videoString: String = "VJvid1"
    
    var body: some View {
        @Bindable var viewModel = viewModel
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Group {
                        ForEach(viewModel.listVietJet) { model in
                            NavigationLink {
                                DetailView(videoString: model.videoString)
                            } label: {
                                VStack {
                                    Image(model.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 262, height: 120)
                                        .cornerRadius(15.0)
                                    
                                }
                            }
                        }
                    }
                }
                .buttonStyle(.plain)
                .padding(.leading, 50)
            }
            //            .scrollClipDisabled()
            
        } header: {
            Text("Vietjet List")
                .font(.system(size: 22))
                .bold()
                .padding(.vertical, 5)
                .padding(.leading, 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
        }
        
        
    }
}

#Preview {
    VideoListView()
}


struct ItemView: View {
    var body: some View {
        VStack {
            Image("image2")
                .resizable()
                .scaledToFit()
                .frame(width: 262, height: 120)
                .cornerRadius(15.0)
            Text("sdfsdfsdfsdfsdfsdf")
                .font(.system(size: 22))
                .bold()
        }
    }
}

struct DetailView: View {
    
    var videoString: String
    @Environment(ViewModel.self) private var viewModel
    
    var body: some View {
        @Bindable var viewModel = viewModel
        ZStack {
            Image("photo-3-1 2")
                .resizable()
                .scaledToFill()
            HeroView(videoString: videoString)
        }
        .ignoresSafeArea()
        .frame(width: .infinity, height: .infinity)
    }
}
