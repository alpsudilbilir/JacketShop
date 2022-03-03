//
//  FavoritesView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 1.03.2022.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var vM: ViewModel
    var item: Item
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(vM.favoriteItems) { item in
                        ItemRowView(item: item)
                    }
                }
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(item: itemList[0])
    }
}
