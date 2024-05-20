//
//  StreamInputView.swift
//  VideoPlayerStream
//
//  Created by Abdalla Elnajjar on 2024-05-19.
//

import SwiftUI
import SwiftData


struct StreamInputView: View {
    
    @State private var name = ""
    @State private var url = ""
    @Environment(\.modelContext) private var context
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            TextField("Stream Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Stream URL", text: $url)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Done") {
                addStream()
                isPresented = false
              
            }
            .disabled(name.isEmpty || url.isEmpty)
        }
        .padding()
    }

    private func addStream() {
        let newStream = Stream(name: name, url: url)
        context.insert(newStream)
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    StreamInputView(isPresented: .constant(true) )
}
