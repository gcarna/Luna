//
//  ModelView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 29/10/2020.
//

import Foundation

struct ArticleViewModel: Identifiable {
    var id = UUID()
    var article: Article
    init(article: Article) {
        self.article = article
    }
}

class HomePageViewModel: ObservableObject {
    @Published var homepage: HomePage
    init() {
        self.homepage = HomePage()

    }
    var articles: [ArticleViewModel] {
        get {
            homepage.articles.map(ArticleViewModel.init)
        }
    }

}
