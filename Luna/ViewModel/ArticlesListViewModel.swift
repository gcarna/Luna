//
//  HomeViewModel.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation
import Combine
import SwiftUI

class ArticlesListViewModel: ObservableObject, GioveService {
    @Published var articlesListViewModel = [ArticleViewModel]()
    var apiSession: APIService
    var cancellables = Set<AnyCancellable>()
    
    init(apiSession: APIService = APISession()) {
        self.apiSession = apiSession
    }
    
    func getArticlesList() {
        let cancellable = self.getArticlesList()
            .sink(receiveCompletion: { result in
                switch result {
                case .failure(let error):
                    print("Handle error: \(error)")
                case .finished:
                    break
                }
                
            }) { (articles) in
                self.articlesListViewModel = articles.map(ArticleViewModel.init)
            }
        cancellables.insert(cancellable)
    }
}
