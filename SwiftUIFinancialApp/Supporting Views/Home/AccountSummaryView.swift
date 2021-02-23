//
//  AccountSummaryView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/28/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountSummaryView: View {
    private var type = "creditcard"

    var body: some View {
        VStack {
            if type == "creditcard" {
                creditcard
            } else {
                debitcard
            }
        }.padding(.horizontal, 10)
    }
}

struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
            .previewLayout(.fixed(width: 600, height: 310))
    }
}

private extension AccountSummaryView {
    var creditcard: some View {
        VStack {
            VStack {
                VStack(spacing: 0) {
                    HStack {
                        Text("ACCOUNT")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                        Spacer()
                        Text("****  ****  ****  2864")
                            .customFont(.custom(.medium, 15))
                            .foregroundColor(.gray)
                    }
                    Divider()
                }

                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Credit Utilized")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)
                        Text("$9999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }
                    Spacer()
                    VStack(alignment: .trailing, spacing: 0) {
                        Text("Available Credit Limit")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)
                        Text("$999,999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }
                }
                .padding(.top, 10)

                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.baseMediumGray)
                        .cornerRadius(4.5)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 10)
                    Rectangle()
                        .fill(Color.basePrussianBlue)
                        .cornerRadius(4.5)
                        .frame(width:120, height: 10)
                }
                .padding(.bottom)
            }
            .padding(.horizontal, 10)

            Divider()

            List {
                HStack {
                    Text("Last Bill Amount")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("$ 2300")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)
                HStack {
                    Text("Payment Due Date")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("Feb 28, 2020")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)
                HStack {
                    Text("Min. Amount Due Date")
                        .customFont(.custom(.bold, 14))
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                    Text("$ 130")
                        .customFont(.custom(.medium, 14))
                        .foregroundColor(.gray)
                }.listRowBackground(Color.baseWhite)
            }
            .frame(height: 150)
        }
        .padding(.top, 10)
        .background(Color.baseWhite)
    }
    
    var debitcard: some View {
        VStack {
            VStack(spacing: 0) {
                HStack {
                    Text("TRANSACTIONS")
                        .customFont(.custom(.bold, 20))
                        .padding(.bottom, 2)
                        .foregroundColor(.basePrussianBlue)
                    Spacer()
                }
                Divider().padding(.bottom, 10)
            }
            VStack {
                ForEach(0 ..< 3) { _ in
                    TransactionItemView()
                }
            }.padding(.horizontal, 10)
        }.padding(.horizontal, 10)
    }
}
