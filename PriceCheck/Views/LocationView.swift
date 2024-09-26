//
//  LocationView.swift
//  PriceCheck
//
//  Created by Vy T. on 9/26/24.
//

import SwiftUI

struct LocationView: View {
    var location: Location

    var body: some View {
        List {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                ScanView(scan: scan)
            }
        }.navigationTitle(location.name)
    }
}
