//
//  CartView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

struct CartButtonView: View {
    @EnvironmentObject var vM: ViewModel
    var numberOfItems: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .resizable()
                .frame(width: 33, height: 33)
            Text("\(numberOfItems)")
                .frame(width: 22, height: 20)
                .background(Color.red.opacity(0.6))
                .foregroundColor(.white)
                .font(.title2)
                .clipShape(Circle())
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfItems: 1)
            .environmentObject(ViewModel())
    }
}
