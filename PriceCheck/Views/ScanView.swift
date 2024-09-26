//
//  ScanView.swift
//  PriceCheck
//
//  Created by Vy T. on 9/26/24.
//

import SwiftUI

struct ScanView: View {
    var scan: PriceScan

    var body: some View {
        HStack {
            Text(scan.item)
            Spacer()
            Text(Helper.asCurrency(scan.price))
                          .bold()
        }
    }
}
