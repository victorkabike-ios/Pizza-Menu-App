//
//  Pizza.swift
//  PizzaMenuList
//
//  Created by victor kabike on 2022/03/15.
//

import Foundation

class Pizza : Identifiable,Decodable {
    
    var id:UUID?
    var image:String
    var name: String
    var topping:[String]
    
}
