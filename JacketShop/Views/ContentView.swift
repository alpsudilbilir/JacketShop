//
//  ContentView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct ContentView: View {
    var item: Item
    let columns = [GridItem(.adaptive(minimum: 140))]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 13) {
                    ForEach(itemList, id:\.id) { item in
                        ItemView(item: item)
                    }

                }
                .padding(6)
            }
            .navigationTitle(Text("Jacket Shop"))
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink {
                        Text("Items here.")
                    } label: {
                        CartView()
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(item: itemList[0])
    }
}
