// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'

import SwiftUI

struct ScanListView: View {
    let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })

    var body: some View {
        NavigationView {
            List {
                ForEach(locationScans) { location in
                    Section(header: Text(location.name)) {
                        ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                            NavigationLink(destination: ScanDetailView(scan: scan)) {
                                ScanView(scan: scan)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Scans")
        }
    }
}

struct ScanListView_Previews: PreviewProvider {
    static var previews: some View {
        ScanListView()
    }
}

