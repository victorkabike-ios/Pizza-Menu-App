//
//  PizzaModel.swift
//  PizzaMenuList
//
//  Created by victor kabike on 2022/03/15.
//

import Foundation

class PizzaModel : ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        self.pizzas = DataService.getLocalData()
    }
}
