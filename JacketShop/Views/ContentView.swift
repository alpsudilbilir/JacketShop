//
//  ContentView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct ContentView: View {
    var item: Item
    let columns = [GridItem(.adaptive(minimum: 160))]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 13) {
                    ForEach(itemList, id:\.id) { item in
                        ItemView(item: item)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Jacket Shop"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(item: itemList[0])
    }
}
