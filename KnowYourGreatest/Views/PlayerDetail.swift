//
//  PlayerDetail.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 05/08/2022.
//

import SwiftUI

struct PlayerDetail: View {
    var player: Player
    
    var body: some View {
        ZStack {
            Color(red: 30 / 255, green: 30 / 255, blue: 108 / 255)
                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                player.nationImage
                    .resizable()
                    .frame(width: 125, height: 75)
                    .padding(.horizontal, 15)
                Spacer()
                Group {
                    Text("* Full name: \(player.fullName)\n")
                    Text("* D.O.B: \(player.dateOfBirth)\n")
                    Text("* Career Appearances: \(player.careerAppearances)\n")
                    Text("* Career Goals: \(player.careerGoals)\n")
                    Text("* Career Assists: \(player.careerAssists)\n")
                    Text("* Career Championships: \(player.careerChampionships)\n")
                    Text("* Career Clubs: \(player.careerClubs)\n")
                    Text("* Notable Achievements: \(player.notableAchievements)\n")
                }
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.yellow)
                
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
        }
            .navigationTitle("")
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[0])
    }
}
