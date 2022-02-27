//
//  ItemView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct ItemView: View {
    @EnvironmentObject var viewModel: ViewModel
    var item: Item
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(item.image)
                    .resizable()
                    .frame(width: 180, height: 240)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(item.name)
                        .foregroundColor(.white)
                        .bold()
                    Text("$\(item.price)")
                        .foregroundColor(.white)
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
            }
            Button {
                viewModel.addToCart(item: item)
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(.black)
                    .frame(width: 44, height: 44)
                    .background(.ultraThinMaterial)
                    .clipShape(Circle())
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: itemList[4])
            .environmentObject(ViewModel())
    }
}
