//
//  ContentView.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

struct Channels: View {
    @State private var searchText = ""
    @ObservedObject var channels = ChannelViewModel()

    var body: some View {
        let channelArray = (self.searchText.count > 0 ? self.channels.searchingData : self.channels.data)
        
        NavigationView {
             ScrollView {
                 LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                     ForEach(channelArray) {channel in
                         NavigationLink(destination: ChannelDetail(channel: channel)) {
                             ChannelItem(channel: channel)
                         }
                     }
                 }
                 .padding(.horizontal)
                 .animation(.easeOut, value: searchText)
             }
            .navigationTitle("tabbar_channels")
        }
        .searchable(text: $searchText)
        .onChange(of: searchText) { _ in
            channels.search(string: searchText)
        }
    }
}

struct Channels_Previews: PreviewProvider {
    static var previews: some View {
        Channels()
            .preferredColorScheme(.dark)
    }
}
