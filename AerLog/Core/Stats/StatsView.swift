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
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 53.8762, longitude: 28.0262), // MSQ
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )
    // Sample Pin Model
    struct Pin: Identifiable {
        let id = UUID()
        let coordinate: CLLocationCoordinate2D
        
        static let example = Pin(coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194))
    }
    
    let pinCoordinate = CLLocationCoordinate2D(latitude: 53.9006, longitude: 27.5590)
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal) {
                HStack {
                    NavigationLink {
                        AirportsView()
                    } label: {
                        StatsCard(name: "Airports", value: 80)
                    }
                    
                    NavigationLink {
                        FlightsView()
                    } label: {
                        StatsCard(name: "Flights", value: 68)
                    }
                    
                    
                    NavigationLink {
                        AircraftsView()
                    } label: {
                        StatsCard(name: "Aircrafts", value: 20)
                    }
                }
            }
            .scrollIndicators(.hidden)
            
            Map(initialPosition: .region(region)) {
                Annotation("Custom Pin", coordinate: pinCoordinate) {
                    Image(systemName: "airplane")
                        .foregroundColor(.aerBlue)
                        .font(.system(size: 30))
                    
                }
            }
            .mapStyle(.standard)
            .preferredColorScheme(.dark)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay {
                Text("Cities")
                    .font(.customFont(.regular, 20))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding()
                //                        .allowsHitTesting(false)
                //                    Rectangle()
                //                        .fill(.black)
                //                        .blendMode(.hue)
                //                        .allowsHitTesting(false)
                
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
        .foregroundStyle(.white)
    }
}

#Preview {
    NavigationStack {
        StatsView()
    }
}
