//
//  VideoPlayerStreamApp.swift
//  VideoPlayerStream
//
//  Created by Abdalla Elnajjar on 2024-05-19.
//

import SwiftUI
import SwiftData

@main
struct VideoPlayerStreamApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Stream.self)
    }
}
