//
//  ItemRowView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 1.03.2022.
//

import SwiftUI

struct ItemRowView: View {
    @EnvironmentObject var vM: ViewModel
    var item: Item
    var body: some View {
        HStack(alignment: .top) {
            Image(item.image)
                .resizable()
                .frame(width: 120, height: 140)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(item.name)
                    .bold()
                Text("$\(item.price)")
            }
            .padding()
            Spacer()
            VStack(alignment: .trailing, spacing: 10) {
                Spacer()
                Image(systemName: "trash")
                    .onTapGesture {
                        vM.removeItem(item: item)
                    }
            }
            .padding()
        }
        .frame(width: 400, height: 140)
        .background(.ultraThinMaterial)
        .cornerRadius(10)
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: itemList[0])
    }
}
