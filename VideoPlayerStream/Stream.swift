//
//  Stream.swift
//  VideoPlayerStream
//
//  Created by Abdalla Elnajjar on 2024-05-20.
//
import SwiftUI
import SwiftData

@Model
final class Stream: Identifiable {
    @Attribute var id: UUID
    @Attribute var name: String
    @Attribute var url: String

    init(id: UUID = UUID(), name: String = "", url: String = "") {
        self.id = id
        self.name = name
        self.url = url
    }
}
