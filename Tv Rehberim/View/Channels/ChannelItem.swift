//
//  ChannelItem.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 7.03.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct ChannelItem: View {
    var channel: ChannelModel = ChannelViewModel().data[0]
    
    var body: some View {
        VStack {
            VStack {
                AnimatedImage(url: URL(string: channel.imageUrl))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 4)
                    .frame(height: 70)

                Text(channel.name)
                    .font(.caption).bold()
                    .foregroundColor(.primary)
                    .padding(4)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color.gray.opacity(0.15))
                    .lineLimit(2)

            }
            .padding(.top, 4)

        }
        //.frame(width: 100, height: 120)
        .background(Color("whiteBG"))
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .circular))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
        
    }
}

struct ChannelItem_Previews: PreviewProvider {
    static var previews: some View {
        ChannelItem()
            .previewLayout(.sizeThatFits)
    }
}
