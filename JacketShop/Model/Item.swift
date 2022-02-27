//
//  Item.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import Foundation

struct Item: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}
let itemList: [Item] = [Item(name: "Denim Jacket", image: "jacket1", price: 49),
                        Item(name: "Black Coat", image: "jacket2", price: 65),
                        Item(name: "Brown Jacket", image: "jacket3", price: 39),
                        Item(name: "Red Coat", image: "jacket4", price: 88),
                        Item(name: "Blue Coat", image: "jacket5", price: 99),
                        Item(name: "Cream Jacket", image: "jacket6", price: 42),
                        Item(name: "College Jacket", image: "jacket7", price: 29),
                        Item(name: "Blue Denim", image: "jacket8", price: 44),
                        Item(name: "Pink Palto", image: "jacket9", price: 129),
                        Item(name: "Dark Coat", image: "jacket10", price: 149),
                        Item(name: "Yellow Coat", image: "jacket11", price: 87)
                        Item(name: "Dark Brown Jacket", image: "jacket12", price: 62)]
