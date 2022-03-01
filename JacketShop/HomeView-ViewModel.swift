//
//  HomeView-ViewModel.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//
import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published private(set) var cartItems: [Item] = []
    @Published private(set) var favoriteItems: [Item] = []
    @Published private(set) var totalPrice: Int = 0
    @Published private(set) var isInTheFavorites = false
    @Published var selectedTab = 0
    
    let columns = [GridItem(.adaptive(minimum: 140))]
    let tabBarImageNames = ["house", "heart", "cart"]

    func addToCart(item: Item) {
        cartItems.append(item)
        totalPrice += item.price
    }
    func removeItem(item: Item) {
        if selectedTab == 2 {
            cartItems = cartItems.filter { $0.id != item.id }
            totalPrice -= item.price
        } else {
            favoriteItems = favoriteItems.filter { $0.id != item.id }
        }
     
    }
    func addToFavorites(item: Item) {
        favoriteItems.append(item)
    }
    func removeFromFavorites(item: Item) {
        favoriteItems = favoriteItems.filter { $0.id != item.id }
    }
    func checkFavorites(item: Item) -> Bool {
        if favoriteItems.contains(where: { $0.id == item.id }) {
            return true
        }
        return false
    }
}

