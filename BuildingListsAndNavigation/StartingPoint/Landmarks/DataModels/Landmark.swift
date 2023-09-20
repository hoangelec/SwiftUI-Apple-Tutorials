//
//  Landmark.swift
//  Landmarks
//
//  Created by Hoang Cap on 20/09/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

extension Landmark {
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    init() {
        id = 1
        name = "name"
        park = "park"
        state = "state"
        imageName = "turtlerock"
        description = "desc"
        coordinates = .init(latitude: 100, longitude: 100)
    }
}
