//
//  CatPhoto.swift
//  catz
//
//  Created by Борис  on 21.11.2021.
//

import SwiftUI


struct CatPhoto: View {
    
    let cats1: Cat
    
    var body: some View {
        Image(cats1.catPhoto)
    }
}

struct CatPhoto_Previews: PreviewProvider {
    static var previews: some View {
        CatPhoto(cats1: cats[0] )
    }
}
