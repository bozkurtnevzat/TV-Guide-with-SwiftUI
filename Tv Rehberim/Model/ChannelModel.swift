//
//  ChannelsModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

struct ChannelModel: Identifiable {
    var id: Int
    var name: String
    var imageUrl: String
    var isFavorite: Bool = false
}
