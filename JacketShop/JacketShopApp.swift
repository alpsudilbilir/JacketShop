//
//  JacketShopApp.swift
//  JacketShop
//
//  Created by Alpsu Dilbilir on 27.02.2022.
//

import SwiftUI

@main
struct JacketShopApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(item: itemList[0])
        }
    }
}
