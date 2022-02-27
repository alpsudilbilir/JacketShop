//
//  CartView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var vM: ViewModel
    var body: some View {
        VStack {
            ScrollView {
                ForEach(vM.addedItems, id: \.id) { item in
                    HStack {
                            Image(item.image)
                                .resizable()
                                .frame(width: 80, height: 80)
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
            Spacer()
            Text("Total Price $\(vM.totalPrice)")
            Button {
                //Pay
            } label: {
                Text("Pay")
                    .frame(width: 100, height: 40)
                    .background(Color.primary)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle(Text("Cart"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(ViewModel())
    }
}
