//
//  hacker_news_appApp.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 24/06/2022.
//

import SwiftUI
import UIKit
import Combine

@main
struct hacker_news_appApp: App {    
    init() {
        let barAppearance = UINavigationBar.appearance()
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor(displayP3Red: 255/255, green: 102/255, blue: 0/255, alpha: 1.0)
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            barAppearance.standardAppearance = appearance
            barAppearance.scrollEdgeAppearance = appearance
        } else {
            barAppearance.backgroundColor = UIColor(displayP3Red: 255/255, green: 102/255, blue: 0/255, alpha: 1.0)
            barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            barAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        }
        barAppearance.tintColor = .white

    }
    
    
    var body: some Scene {
        WindowGroup {
            StoryListView()
        }
    }
}
