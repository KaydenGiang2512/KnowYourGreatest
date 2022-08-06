//
//  PlayerDetail.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 05/08/2022.
//

import SwiftUI
import MapKit

struct PlayerDetail: View {
    var player: Player
    
    var body: some View {
        ZStack {
            Image("stadium")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Color(red: 30 / 255, green: 30 / 255, blue: 108 / 255, opacity: 0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    player.nationImage
                        .resizable()
                        .frame(width: 125, height: 75)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 40)
                    NavigationLink {
                        BirthLocation(coordinate: CLLocationCoordinate2D(latitude: player.coordinates.latitude, longitude: player.coordinates.longitude))
                    } label: {
                        Text("Location: \(player.birthLocation)")
                            .underline()
                            .lineLimit(2)
                            .foregroundColor(.green)
                            .font(.system(size: 20))
                            .padding()
                            .frame(width: 225, height: 90, alignment: .center)
                            .hoverEffect(.highlight)
                    }
                    
                }
                Group {
                    Text("* Full name: \(player.fullName)\n")
                    Text("* D.O.B: \(player.dateOfBirth)\n")
                    Text("* Career Appearances: \(player.careerAppearances)\n")
                    Text("* Career Goals: \(player.careerGoals)\n")
                    Text("* Career Assists: \(player.careerAssists)\n")
                    Text("* Career Championships: \(player.careerChampionships)\n")
                    Text("* Career Clubs: \(player.careerClubs)\n")
                    Text("* Notable Achievements: \(player.notableAchievements)\n")
                    Text("* Fun fact: \(player.funFact)\n")
                        .foregroundColor(.yellow)
                }
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[6])
    }
}
