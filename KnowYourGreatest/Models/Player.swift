//
//  Player.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 04/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Player: Identifiable, Codable {
    var id: Int
    var fullName: String
    var dateOfBirth: String
    var birthLocation: String
    var careerAppearances: String
    var careerGoals: String
    var careerAssists: String
    var careerChampionships: String
    var careerClubs: String
    var notableAchievements: String
    var funFact: String
    
    var nationName: String
    var nationImage: Image {
        Image(nationName)
    }
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D (
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
