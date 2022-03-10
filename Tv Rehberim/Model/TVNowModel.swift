//
//  TVNowModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 10.03.2022.
//

import SwiftUI

struct TVNowModel: Identifiable {
    var id = UUID()
    var channel: ChannelModel
    var programme: ChannelDetailModel
    var nextProgramme: ChannelDetailModel
}

