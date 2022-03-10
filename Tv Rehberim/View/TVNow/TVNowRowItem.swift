//
//  TVNowRowItem.swift
//  Tv Rehberim
//
//  Created by Nevzat BOZKURT on 10.03.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct TVNowRowItem: View {
    var data: TVNowModel
    var body: some View {
        HStack {
            // MARK: Channel Logo
            ZStack {
                AnimatedImage(url: URL(string: data.channel.imageUrl))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                Circle()
                    .stroke(Color.black.opacity(0.1), lineWidth: 2)
                    .frame(width: 120, height: 120)
            }

            Spacer()
            
            //MARK: Programme Detail
            VStack(alignment: .leading, spacing: 6) {
                ProgressView(value: Float.random(in: 0..<1))
                    .accentColor(Color.red)
                    .scaleEffect(x: 1, y: 2.5, anchor: .center)
                    .padding(.bottom, 6)
                    
                Text(data.programme.name)
                    .font(.headline)
                    
                Text("\(data.programme.startTime) - \(data.programme.endTime), \(data.programme.type)")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                
                HStack{
                    //MARK: Next Programme Button
                    HStack (spacing: 0) {
                        Image(systemName: "arrow.turn.down.right")
                            .scaleEffect(0.8)
                    }
                    .padding(4)
                    .foregroundColor(.secondary)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
                    
                    //MARK: Next Programme Detail
                    VStack(alignment: .leading, spacing: 2) {
                        Text(data.nextProgramme.name)
                            .font(.headline)
                        Text("\(data.nextProgramme.startTime) - \(data.nextProgramme.endTime), \(data.nextProgramme.type)")
                            .font(.footnote)
                    }
                    .foregroundColor(.secondary)
                }
            }
        }
        .padding()
    }
}

struct TVNowRowItem_Previews: PreviewProvider {
    static var previews: some View {
        TVNowRowItem(data: TVNowViewModel().data.first!)
    }
}
