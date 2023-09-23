//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Hoang Cap on 22/09/2023.
//
//  Copyright © 2023 Apple. All rights reserved.

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .clipped()
                .cornerRadius(10)
                .frame(width: 150, height: 150)
            
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        CategoryItem(landmark: modelData.landmarks[0])
    }
}
