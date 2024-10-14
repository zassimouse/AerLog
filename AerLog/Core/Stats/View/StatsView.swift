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

            
            Text("My Stats")
                .customFont(.medium, 26)
                .padding(.vertical, 20)
            
            ScrollView(.horizontal) {
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Flights")
                                .font(.customFont(.regular, 20))
                            
                            Spacer()
                            
                            Image(systemName: "arrow.up.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        
                        Spacer()
                        
                        Text("40")
                            .font(.customFont(.bold, 80))
                    }
                    .padding()
                    .frame(width: 200, height: 200)
                    .background(.aerGrey)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                }
            }
            
            Map()
                .mapStyle(.standard)
                .preferredColorScheme(.dark)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    Text("Live Stats")
                        .font(.customFont(.regular, 20))

                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                }

            
            Spacer()


        }
        .navigationBarBackButtonHidden(true)
        .toolbar {

            
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
        .background(.aerBackground)
    }
}

#Preview {
    StatsView()
}
