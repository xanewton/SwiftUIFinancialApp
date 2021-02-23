//
//  CardView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .opacity(0.94)
            }
            
            VStack {
                HStack {
                    Image("checkmark")
                    VStack(alignment: .leading, spacing: -6) {
                        Text("$99,999").customFont(.custom(.bold, 20))
                        Text("Available Balance").customFont(.custom(.ultralight, 10))
                    }
                    Spacer()
                    Image("visa-logo")
                }.padding(.horizontal, 20)
                
                HStack {
                    HStack {
                        Text("****").customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("9999").customFont(.custom(.black, 20))
                    }
                    Spacer()
                }.padding(.top, 15)
                .padding(.horizontal, 20)
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("CARD HOLDER")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("John Carter").customFont(.custom(.black, 16))
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("EXPIRES")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("08/22").customFont(.custom(.black, 16))
                    }
                    VStack(alignment: .leading) {
                        Text("CVV")
                            .customFont(.custom(.bold, 11))
                            .foregroundColor(Color.baseRockBlue)
                        Text("999").customFont(.custom(.black, 16))
                    }
                }
            }
            .frame(width: 280, height: 160)
            .padding(10)
            .foregroundColor(.baseWhite)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: 300, height: 180))
    }
}
