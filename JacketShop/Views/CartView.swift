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
                        .frame(width: 120, height: 40)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        
                }
                .disabled(vM.totalPrice == 0 ? true : false)
            }
            .navigationTitle(Text("Cart"))
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(ViewModel())
    }
}


