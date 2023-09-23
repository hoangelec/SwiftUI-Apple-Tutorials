//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Hoang Cap on 22/09/2023.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

private struct CategoryRowItem {
    
}

struct CategoryRow: View {

    var categoryName: String
    var items: [Landmark]
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                            Spacer(minLength: 20)
                        }

                        
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRow(categoryName: landmarks[0].name,
                    items: Array(landmarks.prefix(10)))
    }
}
