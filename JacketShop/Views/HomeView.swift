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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: vM.columns, spacing: 13) {
                    ForEach(itemList, id: \.id) { item in
                        ItemView(item: item)
                            .environmentObject(vM)
                    }
                }
                .padding(6)
            }
            .navigationTitle(Text("Jacket Shop"))
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink {
                        CartView()
                            .environmentObject(vM)
                    } label: {
                        CartButtonView(numberOfItems: vM.addedItems.count)
                            .environmentObject(vM)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(item: itemList[0])
    }
}
