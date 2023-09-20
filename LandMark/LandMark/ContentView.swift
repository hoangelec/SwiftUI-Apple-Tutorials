//
//  ContentView.swift
//  LandMark
//
//  Created by Hoang Cap on 19/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage()
                .offset(y:-150)
                .padding(.bottom, -150)
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.largeTitle)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("Park")
                }
                Divider()
                Text("About").font(.largeTitle)
                    .padding([.top, .bottom], -10)
                Text("Some information")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
