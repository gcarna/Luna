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
    var content: String?
    var isFrontPage: Bool
    var mainTitle: String
    var picUri: String
    var publicationDate: String
    
    
    init(title: String, articleUri: String, category: String, content: String?, isFrontPage: Bool,
         mainTitle: String, picUri: String, publicationDate: String) {
        self.title = title
        self.articleUri = articleUri
        self.category = category
        self.content = content
        self.isFrontPage = isFrontPage
        self.mainTitle = mainTitle
        self.picUri = picUri
        self.publicationDate = publicationDate
    }
}

struct HomePage {
    var articles: [Article] = []
}

