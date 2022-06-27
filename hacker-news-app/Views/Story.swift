//
//  Story.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 24/06/2022.
//

import Foundation
import Combine

struct Story: Codable {
    let id: Int
    let title: String
    let url: String
}

extension Story {
    static func placeHolder() -> Story {
        return Story(id: 0, title: "N/A", url: "")
    }
}
