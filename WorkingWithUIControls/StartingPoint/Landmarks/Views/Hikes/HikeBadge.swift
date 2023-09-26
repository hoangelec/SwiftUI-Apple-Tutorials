//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Hoang Cap on 26/09/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI


struct HikeBadge: View {
    var name: String

    @State private var scale = 1.0 / 3

    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(scale)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}


struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(name: "Preview Testing")
    }
}
