//
//  ComprehensiveSalesView.swift
//  CarSalesChart
//
//  Created by Tiger Nixon on 5/3/23.
//

import SwiftUI
import Charts

struct ComprehensiveSalesView: View {
    var body: some View {
        VStack {
            Chart(carSalesSeriesData) { seriesData in
                ForEach(seriesData.salesData) { salesData in
                    LineMark(x: .value("Name", salesData.vehicleName),
                             y: .value("Sales", salesData.sales))
                    .foregroundStyle(by: .value("Name", seriesData.name))
                    .symbol(by: .value("Name", seriesData.name))
                }
            }
        }
        .padding()
    }
}

struct ComprehensiveSalesView_Previews: PreviewProvider {
    static var previews: some View {
        ComprehensiveSalesView()
    }
}
