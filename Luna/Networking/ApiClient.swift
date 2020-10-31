//
//  HTTPGetRequest.swift
//  Luna
//
//  Created by Giuseppe Carnà on 31/10/2020.
//

import Foundation

public struct ApiClient {
    
    static func HTTPget(url: String) {
        let session = URLSession.shared
        let url = URL(string: url)!
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            // Check the response
            print(response)
            
            // Check if an error occured
            if error != nil {
                // HERE you can manage the error
                print(error)
                return
            }
            
    //        // Serialize the data into an object
            do {
                let json = try JSONDecoder().decode([Article].self, from: data! )
//                   let json = try JSONSerialization.jsonObject(with: data!, options: [])
                print(json)
            } catch {
                print("Error during JSON serialization: \(error.localizedDescription)")
            }
        })
        task.resume()
    }
}



//
//dispatchMain()








