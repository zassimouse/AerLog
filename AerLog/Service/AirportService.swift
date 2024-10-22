//
//  AirportAutocompleteServicw.swift
//  AerLog
//
//  Created by Denis Haritonenko on 14.10.24.
//

import Foundation

enum NetworkError: Error {
    case badId
    case badUrl
}

class AirportService {
    
    static let shared = AirportService()
    
    func getAirports(query: String) async throws -> [Airport] {
        guard let url = URL(string: "https://airport-autosuggest.flightright.net/v1/airports/COM?name=\(query)") else {
            throw NetworkError.badUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        let airportResponse = try? JSONDecoder().decode([Airport].self, from: data)
        print(airportResponse ?? "no!")
        
        return airportResponse ?? []
    }
}
