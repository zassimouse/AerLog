//
//  AircraftsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 5.02.25.
//

import SwiftUI

struct AircraftsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                LazyVStack {
                    AircraftCard(text: "Airbus A320 Neo", image: "a320neo")
                    AircraftCard(text: "Airbus A350-900", image: "a350-900")
                    AircraftCard(text: "Airbus A350-900", image: "a350-900")
                    AircraftCard(text: "Airbus A350-900", image: "a350-900")
                    AircraftCard(text: "Airbus A350-900", image: "a350-900")
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                Text("Add Flight")
                    .font(.customFont(.medium, 20))
              }
            
            
            ToolbarItem(placement: .topBarLeading) {
                
                Button(action: {
//                    dismiss()
                }, label: {
                    
                    Image(systemName: "chevron.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .frame(width: 40, height: 40)
                        .background(.aerCircle)
                        .clipShape(Circle())
                })
            }
        }
        .padding()
        .foregroundStyle(.white)
    }
}

#Preview {
    AircraftsView()
}
