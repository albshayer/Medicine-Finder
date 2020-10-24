//
//  Medicine.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/14/20.
//

import Foundation
import UIKit


struct Medicine {
    var name1: String
    var inStock: Bool
    var price: String
    var details: String
    var pharmacy: String
}

var medicineData: [Medicine] = [
    .init(name1: "asonor", inStock: true, price: "9.750KWD", details: "30ml", pharmacy: "AlZahra-Royal"),
    .init(name1: "Gaviscon", inStock: false, price: "2.500KWD", details: "24Tablets", pharmacy: "Farwniya"),
    .init(name1: "Minisec", inStock: false, price: "5.280KWD", details: "28Tables", pharmacy: "Bayan"),
    .init(name1: "Panadol", inStock: true, price: "0.800KWD", details: "24Tablets", pharmacy: "Royal"),
    .init(name1: "Tobrex", inStock: true, price: "1.750KWD", details: "5ml", pharmacy: "CURE-Bayan"),
    .init(name1: "Vitamin A", inStock: true, price: "2.240KWD", details: "60Tablets", pharmacy: "Ahlam"),
    .init(name1: "Vitamin B", inStock: true, price: "3.600KWD", details: "30Tablets", pharmacy: "Pharmazone"),
    .init(name1: "Vitamin C", inStock: false, price: "1.690KWD", details: "1000mg", pharmacy: "Pharmatee"),
    .init(name1: "Zyrtec", inStock: false, price: "3.500KWD", details: "75ml", pharmacy: "CURE-Ahlam")

]
