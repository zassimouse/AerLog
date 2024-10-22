//
//  ViewModel.swift
//  AerLog
//
//  Created by Denis Haritonenko on 15.10.24.
//

import Foundation

class ViewModel: ObservableObject {
    
    init() {
        print("init")
        Task { try await AirportService.shared.getAirports(query: "vil") }

        
    }
}
