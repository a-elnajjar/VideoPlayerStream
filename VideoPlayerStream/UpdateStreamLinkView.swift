//
//  UpdateStreamLinkView.swift
//  VideoPlayerStream
//
//  Created by Abdalla Elnajjar on 2024-05-21.
//

import SwiftUI

struct UpdateStreamLinkView: View {
    
    @State private var name = ""
    @State private var url = ""
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    let streamLink: Stream

    var body: some View {
        VStack {
            TextField("Stream Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Stream URL", text: $url)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Done") {
                UpdateStream()
                isPresented = false
              
            }
            .disabled(name.isEmpty || url.isEmpty)
        }
        .padding()
    }

    private func UpdateStream() {
        streamLink.name = $name
        streamLink.url = $url
        
        context.insert(newStream)
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
#Preview {
    UpdateStreamLinkView(isPresented: .constant(true))
}
