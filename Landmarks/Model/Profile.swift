//
//  Profile.swift
//  Landmarks
//
//  Created by sabina.azimova on 15.12.23.
//

import Foundation

final class Profile {
    @Published var username: String
    @Published var prefersNotifications = true
    @Published var seasonalPhoto = Season.winter
    @Published var goalDate = Date()
    
    static let `default` = Profile(username:"sabina")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = ":flower"
        case summer = ":sun"
        case autumn = "leaves"
        case winter = ":snowman"
        
        var id: String {rawValue}
    }
    
    init(
        username: String,
        prefersNotifications: Bool = true,
        seasonalPhoto: Profile.Season = Season.winter,
        goalDate: Date = Date()
    ) {
        self.username = username
        self.prefersNotifications = prefersNotifications
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = goalDate
    }
    
}
