//
//  AirportListViewModel.swift
//  AerLog
//
//  Created by Denis Haritonenko on 15.10.24.
//

import Foundation

class AirportListViewModel: ObservableObject {
    @Published var airports: [Airport] = []
    
    @MainActor
    func search(name: String) async {
        do {
            airports = try await AirportService.shared.getAirports(query: name)
        } catch {
            print("Error")
        }
    }
}
