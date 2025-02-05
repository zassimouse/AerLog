//
//  StatsView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import SwiftUI
import MapKit

struct StatsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal) {
                HStack {
                    StatsCard(name: "Flights", value: 68)
                    StatsCard(name: "Airports", value: 80)
                    StatsCard(name: "Aircrafts", value: 20)
                }
            }
            .scrollIndicators(.hidden)
            
            Map()
                .mapStyle(.standard)
                .preferredColorScheme(.dark)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    Text("Live Stats")
                        .font(.customFont(.regular, 20))

                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
//                        .allowsHitTesting(false)
                    Rectangle()
                        .fill(.black)
                        .blendMode(.hue)
                        .allowsHitTesting(false)
                    
                }


            
            Spacer()


        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.black, for: .navigationBar)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                Text("Stats")
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
//        .background(.red)
        .foregroundStyle(.white)

    }
}

#Preview {
    NavigationStack {
        StatsView()
    }
}
