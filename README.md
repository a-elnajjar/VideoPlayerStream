# Swift Streaming App
![Simulator Screenshot - iPhone 15 Pro - 2024-05-21 at 15 24 25](https://github.com/a-elnajjar/VideoPlayerStream/assets/338095/752c69a9-aca5-4661-afd6-6975709178a5)

This is a Swift application that allows users to add and play video streams.

## Features

- Add Stream URL: Users can add a stream by entering its URL. The app will then save this stream for future use.
- Play Stream: Users can play a stream by tapping on it in the list of streams. The app will then play this stream using `AVPlayer`.

## Implementation

The app uses SwiftUI for the user interface, Swift's built-in `AVPlayer` for video playback, and CoreData for data persistence.

The main view is `ContentView`, which contains a button for adding streams and a list of streams. When the "Add Stream URL" button is tapped, a sheet is presented where users can enter a stream URL. This URL is then added to the list of streams.

Each stream is represented by a `Stream` struct, which has a `name` and a `url`. The list of streams is stored in CoreData, which allows the list to persist across app launches.

When a stream in the list is tapped, the app creates an `AVPlayer` with the stream's URL and starts playing the stream.
Database Integration: The list of streams is currently stored in swiftData. 

## Usage

To use the app, simply run it in Xcode. You can add a stream by tapping the "Add Stream URL" button and entering a stream URL. You can then play this stream by tapping on it in the list of streams.

## Requirements

- iOS 17.0 or later
- Xcode 15.0 or later

## Future Development

- Delete Stream: Add the ability for users to delete a stream from the list.
- Update Stream: Add the ability for users to update the URL of a stream in the list.
-
