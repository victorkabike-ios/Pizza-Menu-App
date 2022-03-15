//
//  PizzaDetailView.swift
//  PizzaMenuList
//
//  Created by victor kabike on 2022/03/15.
//

import SwiftUI

struct PizzaDetailView: View {
    var pizza:Pizza
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Image(pizza.image).resizable().scaledToFill()
                VStack(alignment: .leading){
                    Text("Toppings")
                        .font(.headline).padding([.bottom, .top],5)
                    ForEach(0..<pizza.topping.count,id: \.self){ index in
                        Text(String(index+1) +  " •" + pizza.topping[index]).padding(.bottom,3)
                    }
                }.padding(.horizontal)
                
            }
        }.navigationBarTitle(pizza.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var model = PizzaModel()
        PizzaDetailView(pizza: model.pizzas[0])
    }
}
