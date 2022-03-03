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

    @Published var selectedTab = 0
    
    let columns = [GridItem(.adaptive(minimum: 140))]
    let tabBarImageNames = ["house", "heart", "cart"]
    let stepperRange = 1...50

    func addToCart(item: Item) {
        if !cartItems.contains(where: { $0.id == item.id }) {
            cartItems.append(item)
            totalPrice += item.price
        }
    }
    func removeItem(item: Item) {
        if selectedTab == 2 {
            cartItems = cartItems.filter { $0.id != item.id }
            totalPrice -= item.price
        } else {
            favoriteItems = favoriteItems.filter { $0.id != item.id }
        }
    }
    func handleFavorites(item: Item)  {
        if !favoriteItems.contains(where: { $0.id == item.id }) {
            favoriteItems.append(item)
        } else {
            favoriteItems = favoriteItems.filter { $0.id != item.id }
        }
    }
    func checkFavorites(item: Item) -> Bool {
        if favoriteItems.contains(where: { $0.id == item.id }) {
            return true
        }
        return false
    }
}

