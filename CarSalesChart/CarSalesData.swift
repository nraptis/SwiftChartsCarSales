//
//  CarSalesData.swift
//  CarSalesChart
//
//  Created by Tiger Nixon on 5/3/23.
//

import Foundation

struct CarSaleDataPoint: Identifiable {
    let vehicleName: String
    let sales: Int
    var id: String { vehicleName }
}

let foxChevySalesData: [CarSaleDataPoint] = [
    .init(vehicleName: "Impala", sales: 873),
    .init(vehicleName: "Camaro", sales: 1_280),
    .init(vehicleName: "Corvette", sales: 670),
    .init(vehicleName: "Chevelle", sales: 1_610),
    .init(vehicleName: "Suburban", sales: 782),
    .init(vehicleName: "Equinox", sales: 1_160),
    .init(vehicleName: "Silverado", sales: 928),
]

let rolandChevySalesData: [CarSaleDataPoint] = [
    .init(vehicleName: "Impala", sales: 1_212),
    .init(vehicleName: "Camaro", sales: 878),
    .init(vehicleName: "Corvette", sales: 358),
    .init(vehicleName: "Chevelle", sales: 1_250),
    .init(vehicleName: "Suburban", sales: 517),
    .init(vehicleName: "Equinox", sales: 864),
    .init(vehicleName: "Silverado", sales: 1_003),
]

let buckyChevySalesData: [CarSaleDataPoint] = [
    .init(vehicleName: "Impala", sales: 740),
    .init(vehicleName: "Camaro", sales: 456),
    .init(vehicleName: "Corvette", sales: 579),
    .init(vehicleName: "Chevelle", sales: 671),
    .init(vehicleName: "Suburban", sales: 1_129),
    .init(vehicleName: "Equinox", sales: 671),
    .init(vehicleName: "Silverado", sales: 745),
]

enum Dealership {
    case fox
    case roland
    case bucky
}

struct CarSalesSeries: Identifiable {
    let name: String
    let salesData: [CarSaleDataPoint]
    var id: String { name }
}

let carSalesSeriesData: [CarSalesSeries] = [
    .init(name: "Fox Chevrolet", salesData: foxChevySalesData),
    .init(name: "Roland Chevrolet", salesData: rolandChevySalesData),
    .init(name: "Bucky Chevrolet", salesData: buckyChevySalesData),
]
