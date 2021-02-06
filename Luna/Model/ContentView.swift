//
//  ContentView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 27/10/2020.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var homePageViewModel: HomePageViewModel
    var body: some View {
        NavigationView {
            VStack {
                List (homePageViewModel.articles) { article in
                    NavigationLink(destination: DetailsView(article: article.article)){
                        ArticleRow(articleVM: article)
                    }
                    
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
