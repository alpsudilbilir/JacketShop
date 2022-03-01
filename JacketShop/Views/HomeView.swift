//
//  ContentView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vM = ViewModel()
    var item: Item
    var body: some View {
        VStack {
            ZStack {
                switch vM.selectedTab {
                case 0:
                    JacketListView(item: item)
                case 1:
                    FavoritesView(item: item)
                default:
                    CartView()
                }
                
            }
            Spacer()
            CustomTabView()
        }
        .environmentObject(vM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(item: itemList[0])
    }
}


