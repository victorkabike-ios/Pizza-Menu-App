//
//  DataService.swift
//  PizzaMenuList
//
//  Created by victor kabike on 2022/03/15.
//

import Foundation

class DataService {
    static func getLocalData() -> [Pizza]{
        // Parse the JSON file
        // Get a URL path to the json file
        let pathstring = Bundle.main.path(forResource: "Pizza", ofType: "json")
        guard pathstring != nil else {
            return [Pizza]()
        }
        
        // Get a URL object
        let url = URL(fileURLWithPath: pathstring!)
        
        
        // Get a Data oject
        do {
            let data = try Data(contentsOf: url)
            // Decode the data with a json Decoder
            let dataDecoder = JSONDecoder()
            do {
                let  pizzaData = try  dataDecoder.decode([Pizza].self, from: data)
                // Add the unique IDs
                for r in pizzaData {
                    r.id = UUID()
                }
                // Return the Recipes
                return pizzaData
            }catch{
                print(error)
            }

        } catch  {
            print(error)
        }
        return [Pizza]()
        
}
}
