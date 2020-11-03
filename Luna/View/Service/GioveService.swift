//
//  GioveAPI.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation
import Combine

protocol GioveService {
    var apiSession: APIService {get}
    
    func getArticlesList() -> AnyPublisher<[Article], APIError>
}

extension GioveService {
    
    func getArticlesList() -> AnyPublisher<[Article], APIError> {
        return apiSession.request(with: GioveEndpoint.articlesList)
            .eraseToAnyPublisher()
    }
}
