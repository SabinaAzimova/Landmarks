//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by sabina.azimova on 18.12.23.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}


#Preview {
    ContentView()
        .environmentObject(ModelData())
}
