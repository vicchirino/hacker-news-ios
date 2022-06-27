//
//  StoryDetailView.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 24/06/2022.
//

import SwiftUI
import Combine

struct StoryDetailView: View {
    
    @ObservedObject private var storyDetailVM: StoryDetailViewModel
    var storyId: Int
    
    init(storyId: Int) {
        self.storyId = storyId
        self.storyDetailVM = StoryDetailViewModel()
    }
    
    var body: some View {
        VStack {
            Webview(url: self.storyDetailVM.url)
        }.onAppear {
            self.storyDetailVM.fetchStoryDetails(storyId: self.storyId)
        }
        .navigationTitle(self.storyDetailVM.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}
