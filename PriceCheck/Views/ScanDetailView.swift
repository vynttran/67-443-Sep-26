//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by Vy T. on 9/26/24.
//

import SwiftUI

struct ScanDetailView: View {
    var scan: PriceScan

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text(scan.item)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text("As of: \(scan.onDate())")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)

                Text("Price: \(Helper.asCurrency(scan.price))")
                    .font(.title2)
                    .bold()
                    .multilineTextAlignment(.center)

                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
