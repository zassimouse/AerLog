//
//  AircraftCard.swift
//  AerLog
//
//  Created by Denis Haritonenko on 5.02.25.
//

import SwiftUI

struct AircraftCard: View {
    let text: String
    let image: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(text)
                    .customFont(.regular, 16)
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 180)
            .padding()
            .background(.aerBlue)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    AircraftCard(text: "Airbus A320 Neo", image: "a320neo")
}
