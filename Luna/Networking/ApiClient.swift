//
//  HTTPGetRequest.swift
//  Luna
//
//  Created by Giuseppe Carnà on 31/10/2020.
//

import Foundation

public struct ApiClient {
    
    static func HTTPget(url: String, articlesCompletationHandler: @escaping ([Article]?, Error?) -> Void) {
        let session = URLSession.shared
//        @EnvironmentObject var 
        let url = URL(string: url)!
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            // Check if an error occured
            if error != nil {
                // HERE you can manage the error
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let json = try decoder.decode([Article].self, from: data! )
                articlesCompletationHandler(json, nil)
            } catch {
                print("Error during JSON serialization: \(error)")
            }
        })
        task.resume()
    }
}



//
//dispatchMain()








