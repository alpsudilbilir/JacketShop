//
//  DetailsView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 3.03.2022.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject var vM: ViewModel
    var item: Item
    var body: some View {
        VStack(spacing: 5) {
            ZStack {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
            }
            .cornerRadius(5)
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(item.name)
                        .font(.system(size: 44))
                    Text("$\(item.price)")
                        .font(.title2)
                        .bold()
                }
                Spacer()
                Button {
                    vM.addToCart(item: item)
                } label: {
                    Image(systemName: "cart")
                        .foregroundColor(.primary)
                        .frame(width: 66, height: 66)
                        .background(.secondary)
                        .clipShape(Circle())
                }
            }
            .padding()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(item: itemList[8])
            .preferredColorScheme(.dark)
    }
}
