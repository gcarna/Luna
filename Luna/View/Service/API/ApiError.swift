//
//  ApiError.swift
//  Luna
//
//  Created by Giuseppe Carnà on 03/11/2020.
//

import Foundation

enum APIError: Error {
    case decodingError
    case httpError(Int)
    case unknown
}
