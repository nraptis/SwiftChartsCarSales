//
//  CarSalesChartApp.swift
//  CarSalesChart
//
//  Created by Tiger Nixon on 5/3/23.
//

import SwiftUI

@main
struct CarSalesChartApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                SalesSwitcherView()
                ComprehensiveSalesView()
            }
        }
    }
}
