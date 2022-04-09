//
//  Follower.swift
//  GHFollowers
//
//  Created by Apurva Deshmukh on 3/28/22.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(login)
    }
}
