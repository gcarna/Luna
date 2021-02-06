//
//  ArticleRow.swift
//  Luna
//
//  Created by Giuseppe Carnà on 30/10/2020.
//

import SwiftUI

struct ArticleRowView: View {
    var articleVM: ArticleViewModel
    var body: some View {
        NavigationLink(destination: DetailsView(articleVM: articleVM)){
            HStack {
                ImageView(
                    url: URL(string: articleVM.article.picUri)!,
                    placeholder: { Rectangle()},
                    image: { Image(uiImage: $0).resizable() }
                )
                .frame(width: 120.0)
                Text(articleVM.article.title).font(.headline)
            }
        }
    }
}

struct ArticleRowView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRowView(articleVM: ArticleViewModel(article: Article(title: "titolo", articleUri: "uri", category: "cat", content: "content", isFrontPage: true, mainTitle: "mainTitle", picUri: "uri", publicationDate: "article.publicationDate")))
    }
}
