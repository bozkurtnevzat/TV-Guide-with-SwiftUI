//
//  TVNowViewModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 10.03.2022.
//

import SwiftUI

class TVNowViewModel: ObservableObject {
    @Published var data: [TVNowModel] = []
    
    init(){
        getSampleData()
    }
 
    
    func getSampleData(){
        let channel = ChannelViewModel()
        let channelDetail = ChannelDetailViewModel()
        
        for x in channel.data {
            data.append(TVNowModel(channel: x, programme:channelDetail.fullData[0] , nextProgramme: channelDetail.fullData[1]))
        }
    }
}

