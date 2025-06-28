//
//  CellView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 4.03.25.
//

import SwiftUI

struct FlightCell: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("Sep 27 2024")
                        .foregroundStyle(.gray)
                        .font(.customFont(.regular, 14))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                }
                
                Spacer()
                
                HStack {
                    Text("🇫🇷Paris")
                        .customFont(.bold, 14)
                    Text("to")
                        .customFont(.regular, 14)
                    Text("🇨🇭Geneva")
                        .customFont(.bold, 14)
                }
            }
        }
        .padding(15)
        .background(Color(.aerGrey))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    FlightCell()
}
