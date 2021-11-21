//
//  CatId.swift
//  catz
//
//  Created by Борис  on 21.11.2021.
//

import Foundation
import SwiftUI

struct Cat: Identifiable {
   
    let catPhoto: String
    var id = UUID()
    
    
}

let cats = [
    Cat(catPhoto: "cat0"),
    Cat(catPhoto: "cat1"),
    Cat(catPhoto: "cat2"),
    Cat(catPhoto: "cat3"),
    Cat(catPhoto: "cat4"),
    Cat(catPhoto: "cat5"),
    Cat(catPhoto: "cat6")
]
