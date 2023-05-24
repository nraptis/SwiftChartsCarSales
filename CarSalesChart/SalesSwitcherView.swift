//
//  ContentView.swift
//  CarSalesChart
//
//  Created by Tiger Nixon on 5/3/23.
//

import SwiftUI
import Charts

struct SalesSwitcherView: View {
    
    @State var dealership = Dealership.fox
    
    var salesData: [CarSaleDataPoint] {
        switch dealership {
        case .fox:
            return foxChevySalesData
        case .roland:
            return rolandChevySalesData
        case .bucky:
            return buckyChevySalesData
        }
    }
    
    var body: some View {
        VStack {
            
            Picker("Dealership", selection: $dealership.animation(.easeInOut(duration: 0.4))) {
                Text("Fox Chevrolet").tag(Dealership.fox)
                Text("Roland Chevrolet").tag(Dealership.roland)
                Text("Bucky Chevrolet").tag(Dealership.bucky)
            }
            .pickerStyle(.segmented)
            
            Chart(salesData) { data in
                BarMark(
                    x: .value("Name", data.vehicleName),
                    y: .value("Sales", data.sales))
            }
        }
        .padding()
    }
}

struct SalesSwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        SalesSwitcherView()
    }
}
