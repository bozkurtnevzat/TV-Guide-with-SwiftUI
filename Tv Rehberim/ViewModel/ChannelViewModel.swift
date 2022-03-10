//
//  ChannelViewModel.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI

class ChannelViewModel: ObservableObject {
    @Published var data: [ChannelModel] = []
    @Published var searchingData: [ChannelModel] = []
    
    
    init(){
        getSampleData()
    }
    
    func search(string: String){
        if string != "" {
            self.searchingData = self.data.filter({
                $0.name.lowercased().contains(string.lowercased())
            })
        }
    }
    
    func getSampleData(){
        data.append(ChannelModel(id: 1, name: "TRT 1", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/trt-1.png"))
        data.append(ChannelModel(id: 2, name: "Atv", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/NfK3hxSh66hHlIaBxrh6lfdixqLiePGQHwyFRIiI.png"))
        data.append(ChannelModel(id: 3, name: "Star", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/star-logo.jpg"))
        data.append(ChannelModel(id: 4, name: "Show", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/show-tv-logo.png"))
        data.append(ChannelModel(id: 5, name: "Kanal D", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/m7QHWe17F1zclFk71k4mOjt9Kjilw7qxF0bXfrnq.png"))
        data.append(ChannelModel(id: 6, name: "Fox TV", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/qZ9iiAJv0bq5PT3eDT2mwSsfVWunsfBHCvEVI0nJ.png"))
        data.append(ChannelModel(id: 7, name: "TV8", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/Q1eMnkyc3Zh1mMXRccrChMR5gLBJI7RWAAFax46q.png"))
        data.append(ChannelModel(id: 8, name: "Cartoon Network", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/cn-loho.png"))
        data.append(ChannelModel(id: 9, name: "Disney Channel", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/disney-channel-768x334.png"))
        data.append(ChannelModel(id: 10, name: "TLC", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/tlc-logo-768x398.png"))
        data.append(ChannelModel(id: 11, name: "DMAX", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/dmaxlogo-768x317.jpg"))
        data.append(ChannelModel(id: 12, name: "TRT 2", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/trt-2-768x288.png"))
        data.append(ChannelModel(id: 13, name: "TRT Spor", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/trt-spor.png"))
        data.append(ChannelModel(id: 14, name: "S SPORT", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/s-sport-logo-768x542.jpg"))
        data.append(ChannelModel(id: 15, name: "A Spor", imageUrl: "https://www.tvyayinakisi.com/wp-content/uploads/2020/05/a-spor-logo.png"))
    }
}



