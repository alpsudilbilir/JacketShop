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
        HStack {
            Image(item.image)
                .resizable()
                .frame(width: 100, height: 120)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(item.name)
                    .bold()
                Text("$\(item.price)")
            }
            Spacer()
            Image(systemName: "trash")
                .onTapGesture {
                    vM.removeItem(item: item)
                }
                .padding(.horizontal)
        }
        .background(.ultraThinMaterial)
        .cornerRadius(10)
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: itemList[0])
    }
}
