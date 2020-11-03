//
//  ContentView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 27/10/2020.
//

import SwiftUI


struct DetailsView: View {
    var articleVM: ArticleViewModel
    var body: some View {
        HStack {
            Text(verbatim: articleVM.article.title)
            Text(verbatim: articleVM.article.mainTitle)
        }        
    }
}

struct DetailsView_Previews2: PreviewProvider {
    static var previews: some View {
        DetailsView(articleVM: ArticleViewModel(article: Article(title: "titolo", articleUri: "uri", category: "cat", content: "content", isFrontPage: true, mainTitle: "mainTitle", picUri: "uri", publicationDate: "article.publicationDate")))
    }
}
