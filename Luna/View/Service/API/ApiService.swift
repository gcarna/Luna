//
//  ApiService.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation
import Combine
import UIKit

protocol APIService {
    func request<T: Decodable>(with builder: RequestBuilder) -> AnyPublisher<T, APIError>
}

