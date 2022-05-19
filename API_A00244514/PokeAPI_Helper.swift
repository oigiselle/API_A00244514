//
//  PokeAPI_Helper.swift
//  API_A00244514
//
//  Created by Giselle Salvador on 2022-05-18.
//

import Foundation

class PokeAPI_Helper{
    private static var baseURL = URL(string: "https://pokeapi.co/api/v2/pokemon")
    
    private static var session: URLSession = {
        var config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    static func fetchData(callback: @escaping (Any) -> Void){
        let request = URLRequest(url: baseURL!)
        let task = session.dataTask(with: request) {
         data, response, error in
            if let data = data {
                do{
                    let jsonData = try JSONSerialization.jsonObject(with: data, options: [])
                    callback(jsonData)
                }catch let error{
                    print("Error \(error)")
                }
            } else if let error = error {
                print(error)
            } else {
                print("Unknown Error")
            }
        }
        task.resume()
    }
}
