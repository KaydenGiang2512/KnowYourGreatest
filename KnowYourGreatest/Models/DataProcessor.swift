//
//  DataProcessor.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 04/08/2022.
//

import Foundation
import CoreLocation

var players = decodeJsonFromJsonFile(jsonFileName: "Players.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [Player] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Player].self, from: data)
                return decoded
            } catch let error {
                fatalError("Unable to parse and decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Failed to load the \(jsonFileName) file")
    }
    return [ ] as [Player]
}
