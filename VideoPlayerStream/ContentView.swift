//
//  ContentView.swift
//  VideoPlayerStream
//
//  Created by Abdalla Elnajjar on 2024-05-19.
//


import SwiftUI
import AVKit
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var m
    @State private var player: AVPlayer? = nil
    @State private var showingSheet = false
    @Query private var streams: [Stream]
    
    var body: some View {
        NavigationView {
            VStack {
                Group {
                    VideoPlayer(player: player)
                        .frame(height: 200)
                        .onAppear{
                            if let url = Bundle.main.url(forResource: "6923433-uhd_3840_2160_30fps", withExtension: "mp4") {
                                player = AVPlayer(url: url)
                                player?.play()
                            }
                        }
                    
                }
                Button("Add Stream URL") {
                    showingSheet = true
                }
                .sheet(isPresented: $showingSheet) {
                    StreamInputView(isPresented: $showingSheet) 
                }
                
                List {
                    ForEach(streams) { stream in
                        VStack(alignment: .leading) {
                            Text(stream.name)
                                .font(.headline)
                            Text(stream.url)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .onTapGesture {
                            if let url = URL(string: stream.url) {
                                player = AVPlayer(url: url)
                            }
                        }
                    }
                }
                .navigationTitle("Streams")
            }
        }
    }
    
}



#Preview {
    ContentView()
}
