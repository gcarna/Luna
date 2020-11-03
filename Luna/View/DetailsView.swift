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
        List{
            VStack {
                Text(articleVM.article.title)
                    .font(.headline)
                ImageView(urlToImage: articleVM.article.picUri)
                Text(articleVM.article.content ?? "")
                    .lineLimit(nil)
                Spacer()
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(articleVM: ArticleViewModel(article: Article(title: "titolo", articleUri: "uri", category: "cat", content: "content", isFrontPage: true, mainTitle: "mainTitle", picUri: "uri", publicationDate: "article.publicationDate")))
    }
}
