//
//  ContentView.swift
//  Luna
//
//  Created by Giuseppe Carnà on 27/10/2020.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var viewModel: ArticlesListViewModel
    
    var body: some View {
        NavigationView{
            VStack {
                List (self.viewModel.articlesListViewModel) { article in
                    ArticleRowView(articleVM: article)
                }
            }.navigationBarTitle("Home")
        }.onAppear{
            self.viewModel.getArticlesList()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
