//
//  ChannelDetail.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI
import SwiftDate

struct ChannelDetail: View {
    var channel: ChannelModel = ChannelViewModel().data[0]
    @ObservedObject var detail = ChannelDetailViewModel(activeDay: 0)
    @State var activeDayID = 0
    
    var body: some View {
        VStack{
            scroolView()
            detailView()
            Spacer()
        }
        .background(.black.opacity(0.05))
        .navigationTitle(channel.name)
    }
    
    
    
    @ViewBuilder
    func scroolView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(detail.dayData) { day in
                    DayItem(day: day, activeDayID: $activeDayID)
                        .onTapGesture {
                            self.detail.changeDay(dayId: day.id)
                            
                            withAnimation(.linear) {
                                activeDayID = day.id
                            }
                        }
                }
            }
            .padding()
        }
    }
    
    @ViewBuilder
    func detailView() -> some View {
        ScrollView {
            ForEach(detail.data) { detail in
                DetailItem(detail: detail)
            }.padding(.bottom, 44)
        }
    }
}


struct ChannelDetail_Previews: PreviewProvider {
    static var previews: some View {
        ChannelDetail()
            .preferredColorScheme(.dark)
    }
}

struct DayItem: View {
    var day: ChannelDetailDayModel
    @Binding var activeDayID: Int
    
    var body: some View {
        VStack {
                Text(day.day)
                    .bold()
                    .font(.headline)
                    .lineLimit(1)
                
                Text(day.month)
                    .bold()
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
                
                Text(day.name)
                    .bold()
                    .lineLimit(1)
                    .font(.footnote)
            }
            .frame(minWidth: 70)
            .padding(6)
            .background((day.id == activeDayID) ? Color("dayItemBG") : Color("whiteBG"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        }
}


struct DetailItem: View {
    var detail: ChannelDetailModel
    
    
    var body: some View {
        
        HStack{
            Text(detail.startTime)
                .font(.headline)
                .frame(width: 60)
            
            Image(systemName: "arrowtriangle.forward.fill")
                .scaleEffect(0.8)
                
            VStack(alignment: .leading) {
                Text(detail.name)
                    .font(.callout)
                
                Text(detail.type)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
                
            Spacer()
            
        }
        .padding()
        .background(Color("whiteBG"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        .padding(.horizontal)
    }
}
