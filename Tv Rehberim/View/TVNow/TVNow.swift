//
//  TVNow.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

struct TVNow: View {
    @ObservedObject var tvNow = TVNowViewModel()
    
    
    var body: some View {
    
        NavigationView {
            List(tvNow.data) { data in
                NavigationLink(destination: ChannelDetail(channel: data.channel)) {
                    TVNowRowItem(data: data)
                }
            }
            .listStyle(.plain)
            .navigationTitle("tabbar_tvnow")
        }
    }
}

struct TVNow_Previews: PreviewProvider {
    static var previews: some View {
        TVNow()
    }
}
