//
//  AirportListView.swift
//  AerLog
//
//  Created by Denis Haritonenko on 15.10.24.
//

import SwiftUI

struct AirportListView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var search = ""
    @StateObject private var viewModel = AirportListViewModel()
    @ObservedObject var flightViewModel: AddFlightViewModel
    
    var body: some View {
            List(viewModel.airports, id: \.name) { airport in
                
                HStack {
                    Text(airport.name)
                    Spacer()
                    Text(airport.iata)
                        .foregroundStyle(.secondary)
                }
                .onTapGesture {
                    flightViewModel.flight?.arrival = airport
                    print("thisssss")
                    dismiss()
                }
                
            }
            .listStyle(.grouped)
            .searchable(text: $search)
            .onChange(of: search) { newValue in
                Task {
                    if !newValue.isEmpty && newValue.count > 2 {
                        await viewModel.search(name: newValue)
                    } else {
                        viewModel.airports.removeAll()
                    }
                }
            }
    }
}

#Preview {
    AirportListView(flightViewModel: AddFlightViewModel())
}
