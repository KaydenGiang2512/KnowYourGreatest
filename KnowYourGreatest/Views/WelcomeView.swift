//
//  WelcomeView.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 06/08/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                WelcomeScreen(active: $isWelcomeActive)
            } else {
                NationList()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
