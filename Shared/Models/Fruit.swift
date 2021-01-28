//
//  Fruit.swift
//  FRUITS (iOS)
//
//  Created by Himash Nadeeshan on 2021-01-17.
//

import Foundation
import SwiftUI

struct Fruit : Identifiable {
    var id = UUID()
    var tiitle : String
    var headline : String
    var image : String
    var gradientColor : [Color]
    var description : String
    var nutration : [String]
}
