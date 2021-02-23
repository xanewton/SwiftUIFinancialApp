//
//  SwiftUIFinancialAppApp.swift
//  SwiftUIFinancialApp
//
//  Created by newtan on 2021-02-22.
//

import SwiftUI

@main
struct SwiftUIFinancialAppApp: App {
    @StateObject private var model = CreateAccountViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
