//
//  StoryDetailViewModel.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 24/06/2022.
//

import Foundation
import Combine

class StoryDetailViewModel: ObservableObject {
    
    private var cancellable: AnyCancellable?
    

    @Published private var story = Story.placeHolder()
    
    func fetchStoryDetails(storyId: Int) {
        self.cancellable = WebService().getStoriesById(storyId: storyId)
            .catch {_ in  Just(Story.placeHolder()) }
            .sink(receiveCompletion: { _ in }) { story in
                self.story = story
            }
    }
    
}

extension StoryDetailViewModel {
    var title: String {
        return self.story.title
    }
    var url: String {
        return self.story.url
    }
}
