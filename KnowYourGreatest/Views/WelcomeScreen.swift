//
//  WelcomeScreen.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 06/08/2022.
//

import SwiftUI

struct WelcomeScreen: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.03)
            VStack {
                Spacer()
                Text("Greetings!")
                    .font(.system(size: 50, weight: .bold))
                Text("This is a place for all fanatics of the Sport of Kings: Football (Soccer)")
                    .font(.system(size: 15, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20)
                Spacer()
                Image("fifa logo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                Spacer()
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                     .fill(Color.black)
                     .padding(8)
                     .frame(height:80)
                     .overlay(Text("LET'S BEGIN")
                     .font(.system(.title3, design: .rounded))
                     .fontWeight(.bold)
                     .foregroundColor(.white))
                })
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(active: .constant(true))
    }
}
