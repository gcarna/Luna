//
//  GioveEndpoint.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation

enum GioveEndpoint {
    case articlesList
}

extension GioveEndpoint: RequestBuilder {
    var urlRequest: URLRequest {
        switch self {
        case .articlesList:
            guard let url = URL(string: "https://giove-stg.herokuapp.com/articles/home")
            else {preconditionFailure("Invalid URL format")}
            let request = URLRequest(url: url)
            return request
        }
    }
}
