//
//  AircraftsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 5.02.25.
//

import SwiftUI

struct AirportsView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                LazyVStack {
                    AirportCell()
                    AirportCell()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                Text("Airports")
                    .font(.customFont(.medium, 20))
              }
            
            
            ToolbarItem(placement: .topBarLeading) {
                
                Button(action: {
                    dismiss()
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
