//
//  ChannelDetailViewModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 8.03.2022.
//

import SwiftUI
import SwiftDate

class ChannelDetailViewModel: ObservableObject {
    var fullData: [ChannelDetailModel] = []
    @Published var data: [ChannelDetailModel] = []
    var dayData: [ChannelDetailDayModel] = []
 
    init(activeDay: Int = 0){
        getSampleData()
        changeDay(dayId: activeDay)
    }
    
    func changeDay(dayId: Int){
        self.data = fullData.filter({$0.dayId == dayId})
    }
    
    func getSampleData(){
        dayData.append(ChannelDetailDayModel(id: 0, name: "Pazartesi", day: "07", month: "Mar", year: 2022, isActive: true))
        dayData.append(ChannelDetailDayModel(id: 1, name: "Salı", day: "08", month: "Mar", year: 2022))
        dayData.append(ChannelDetailDayModel(id: 2, name: "Çarşamba", day: "09", month: "Mar", year: 2022))
        dayData.append(ChannelDetailDayModel(id: 3, name: "Perşembe", day: "10", month: "Mar", year: 2022))
        dayData.append(ChannelDetailDayModel(id: 4, name: "Cuma", day: "11", month: "Mar", year: 2022))
        dayData.append(ChannelDetailDayModel(id: 5, name: "Cumartesi", day: "12", month: "Mar", year: 2022))
        dayData.append(ChannelDetailDayModel(id: 6, name: "Pazar", day: "13", month: "Mar", year: 2022))
        
        for i in 0...6 {
            for ii in 0...23 {
                fullData.append(ChannelDetailModel(
                    dayId: i,
                    name: "Detail \(i)\(ii)",
                    type: "type\(i)",
                    startTime: "\(ii):00",
                    endTime: "\(ii+1):00"
                ))
            }
        }
        
        
    }
}

