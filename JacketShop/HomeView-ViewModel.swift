//
//  HomeView-ViewModel.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//
import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published private(set) var addedItems: [Item] = []
    @Published private(set) var totalPrice: Int = 0
    
    let columns = [GridItem(.adaptive(minimum: 140))]

    func addToCart(item: Item) {
        addedItems.append(item)
        totalPrice += item.price
    }
    func removeItem(item: Item) {
        addedItems = addedItems.filter { $0.id != item.id }
        totalPrice -= item.price
    }
}

