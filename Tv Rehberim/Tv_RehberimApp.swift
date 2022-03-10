//
//  Tv_RehberimApp.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

@main
struct Tv_RehberimApp: App {
    var body: some Scene {
        WindowGroup {
            TabView() {
                Channels().tabItem {
                    VStack {
                        Image(systemName: "tv")
                        Text("tabbar_channels")
                    }
                }.tag(1)
                TVNow().tabItem {
                    VStack {
                        Image(systemName: "play.tv")
                        Text("tabbar_tvnow")
                    }
                }.tag(2)
            }
        }
    }
}
