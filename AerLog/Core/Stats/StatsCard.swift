//
//  StatsCard.swift
//  AerLog
//
//  Created by Denis Haritonenko on 5.02.25.
//

import SwiftUI

struct StatsCard: View {
    var name: String
    var value: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(name)
                    .font(.customFont(.regular, 20))
                
                Spacer()
                
                Image(systemName: "arrow.up.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
            }
            
            Spacer()
            
            Text("\(value)")
                .font(.customFont(.bold, 80))
        }
        .padding()
        .frame(width: 200, height: 200)
        .background(.aerGrey)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    StatsCard(name: "Flights", value: 10)
}
