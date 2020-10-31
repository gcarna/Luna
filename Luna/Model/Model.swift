//
//  Article.swift
//  Luna
//
//  Created by Giuseppe Carnà on 29/10/2020.
//

import Foundation
	
struct Article: Codable {
    var title: String
    var articleUri: String
    var category:String
    var content: String
    var isFrontPage: Bool
    var mainTitle: String
    var picUri: String
    var pubblicationDate: String
    
    
    init(title: String, subTitle: String, articleUri: String, category: String, content: String, isFrontPage: Bool,
         mainTitle: String, picUri: String, pubblicationDate: String) {
        self.title = title
        self.articleUri = articleUri
        self.category = category
        self.content = content
        self.isFrontPage = isFrontPage
        self.mainTitle = mainTitle
        self.picUri = picUri
        self.pubblicationDate = pubblicationDate
    }
}

struct HomePage {
    var articles: [Article] = []
    init() {
        ApiClient.HTTPget("https://giove-stg.herokuapp.com/articles/home")
        articles.append(Article(title: "TITOLO1", subTitle: "Sottotitolo1"))
        articles.append(Article(title: "TITOLO2", subTitle: "Sottotitolo2"))
    }
}

