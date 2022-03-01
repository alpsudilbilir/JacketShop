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
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(vM.cartItems, id: \.id) { item in
                        ItemRowView(item: item)
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
            .navigationTitle(Text("Cart"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(ViewModel())
    }
}


