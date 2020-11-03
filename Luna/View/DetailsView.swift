//
//  ContentView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 27/10/2020.
//

import SwiftUI


struct DetailsView: View {
    var article: Article
    var body: some View {
        HStack {
            Text(verbatim: article.title)
            Text(verbatim: article.mainTitle)
        }
    }
}

struct DetailsView_Previews2: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
