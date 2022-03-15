//
//  ContentView.swift
//  PizzaMenuList
//
//  Created by victor kabike on 2022/03/15.
//

import SwiftUI

struct PizzaMenuView: View {
    @ObservedObject var model = PizzaModel()
    var body: some View {
        NavigationView {
            List(model.pizzas){r in
                NavigationLink(destination:PizzaDetailView(pizza: r), label: {
                    HStack {
                        Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).clipped()
                        Text(r.name)
                    }
                })
            }.navigationTitle(" Pizza Menu")
        }
    }
}

struct PizzaMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaMenuView()
    }
}
