//
//  Player.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 04/08/2022.
//

import Foundation
import SwiftUI

struct Player: Identifiable, Codable {
    var id: Int
    var fullName: String
    var dateOfBirth: String
    var careerAppearances: String
    var careerGoals: String
    var careerAssists: String
    var careerChampionships: String
    var careerClubs: String
    var notableAchievements: String
    
    var nationName: String
    var nationImage: Image {
        Image(nationName)
    }
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
