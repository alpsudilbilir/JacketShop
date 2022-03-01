//
//  CustomTabView.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 1.03.2022.
//

import SwiftUI

struct CustomTabView: View {
    @EnvironmentObject var vM: ViewModel
    var body: some View {
        HStack {
            ForEach(0..<3) { num in
                Spacer()
                if num == 2 {
                    CartButtonView(numberOfItems: vM.cartItems.count)
                        .foregroundColor( num == vM.selectedTab ? .primary : .gray)
                        .onTapGesture {
                            vM.selectedTab = num
                        }
                        .padding(.vertical)
                } else {
                    Image(systemName: vM.tabBarImageNames[num])
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor( num == vM.selectedTab ? .primary : .gray)
                        .onTapGesture {
                            vM.selectedTab = num
                        }
                        .padding(.vertical)
                }
                Spacer()
            }
            .environmentObject(vM)
        }
        .background(.ultraThinMaterial)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
