//
//  ArticleRow.swift
//  Luna
//
//  Created by Giuseppe Carnà on 30/10/2020.
//

import SwiftUI

struct ArticleRow: View {
    var articleVM: ArticleViewModel
    var body: some View {
        HStack {
            Text(articleVM.article.title).bold()
            Text(articleVM.article.subTitle)
        }
    }
}
