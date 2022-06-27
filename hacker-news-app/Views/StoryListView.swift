//
//  StoryListView.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 24/06/2022.
//

import SwiftUI

struct StoryListView: View {
    
    @ObservedObject private var storyListVM = StoryListViewModel()
    
    var body: some View {
        NavigationView {
            List(self.storyListVM.stories, id: \.id) { storyVM in
                NavigationLink {
                    StoryDetailView(storyId: storyVM.id)
                } label: {
                    Text("\(storyVM.title)")
                        .padding([.top, .bottom], 10)
                        .font(.system(size: 18))
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Hacker News")
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}
