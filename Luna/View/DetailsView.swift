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
                ImageView(
                    url: URL(string: articleVM.article.picUri)!,
                    placeholder: { Rectangle() },
                    image: { Image(uiImage: $0).resizable() }
                )
                Text(articleVM.article.content ?? "").fixedSize(horizontal: false, vertical: true)
                

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
