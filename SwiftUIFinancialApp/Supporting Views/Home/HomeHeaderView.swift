//
//  HomeHeaderView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: -8) {
                Text("Hi, John Carter")
                    .customFont(.custom(.bold, 24))
                Text("Welcome to your favorite app.")
                    .customFont(.custom(.demibold, 16))
            }.foregroundColor(.basePrussianBlue)
            Spacer()
            Image("avatar")
        }.padding(.horizontal, 20)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
            .previewLayout(.fixed(width: 600, height: 80))
    }
}

