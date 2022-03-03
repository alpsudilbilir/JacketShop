//
//  JacketListView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 1.03.2022.
//

import SwiftUI

struct JacketListView: View {
    @EnvironmentObject var vM: ViewModel
    var item: Item
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: vM.columns, spacing: 13) {
                    ForEach(itemList, id: \.id) { item in
                        NavigationLink {
                            DetailsView(item: item)
                        } label: {
                            ItemView(item: item)
                        }
                    }
                    .environmentObject(vM)
                }
                .padding(6)
            }
            .navigationTitle("Jacket Shop")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct JacketListView_Previews: PreviewProvider {
    static var previews: some View {
        JacketListView(item: itemList[0])
    }
}
