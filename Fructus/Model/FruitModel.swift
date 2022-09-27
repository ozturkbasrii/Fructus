//
//  FruitModel.swift
//  Fructus
//
//  Created by Hasan Basri Öztürk on 27.09.2022.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
