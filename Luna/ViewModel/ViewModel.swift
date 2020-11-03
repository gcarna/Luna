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
        self.updateView()
    }
    
    var articles: [ArticleViewModel] {
        get {
            homepage.articles.map(ArticleViewModel.init)
        }
    }
    
    func updateView() {
        ApiClient.HTTPget(url: "https://giove-stg.herokuapp.com/articles/home",
                          articlesCompletationHandler: { articles, error in
                            if let articles = articles {
                                DispatchQueue.main.async {
                                    for article in articles[0...5] {
                                        self.homepage.articles.append(Article(title: article.title, articleUri: article.articleUri, category: article.category, content: article.content, isFrontPage: article.isFrontPage, mainTitle: article.mainTitle, picUri: article.picUri, publicationDate: article.publicationDate))
                                    }
                                }
                            }
                            
                          })
    }
}
