//
//  BirthLocation.swift
//  KnowYourGreatest
//
//  Created by Khanh Giang Nhat on 06/08/2022.
//

import SwiftUI
import MapKit

struct BirthLocation: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var area = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $area)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        area = MKCoordinateRegion (
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        )
    }
}

struct BirthLocation_Previews: PreviewProvider {
    static var previews: some View {
        BirthLocation(coordinate: CLLocationCoordinate2D(latitude: 10.82302, longitude: 106.62965))
    }
}
