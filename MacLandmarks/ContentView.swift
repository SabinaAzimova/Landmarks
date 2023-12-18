//
//  ContentView.swift
//  MacLandmarks
//
//  Created by sabina.azimova on 18.12.23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}


#Preview {
    ContentView()
        .environmentObject(ModelData())
}
