//
//  ChannelDetailModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

struct ChannelDetailDayModel: Identifiable {
    var id: Int
    var name: String
    var day: String
    var month: String
    var year: Int
    var isActive: Bool = false
}

struct ChannelDetailModel: Identifiable {
    var id = UUID()
    var dayId: Int
    var name: String
    var type: String
    var startTime: String
    var endTime: String
}
