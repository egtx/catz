//
//  ContentView.swift
//  catz
//
//  Created by Борис  on 20.11.2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List(cats){
                cat in NavigationLink(
                    destination: CatPhoto(cats1: cat),
                    label: {
                        CatRow(cat: cat)
                    })
            }
            .navigationBarTitle("Cats")
        }
        
        List(cats)
            {
            cat in CatRow(cat: cat)}
      }

    struct CatRow: View
    {
        @State var isSelected = true
        
        let cat: Cat
        var body: some View {
            
            VStack
            {
            
                Button(action: self.sizee, label: {
                Image(cat.catPhoto)
                    .resizable()
                    .frame(width: isSelected ? 100 : 300, height: isSelected ? 100 : 300, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture {
                        isSelected.toggle()
                    }
                    
                        
                    })
                Button(action: self.sizee, label: {
                    Text(isSelected ? "" : "Zoom")
                       
//                        .onTapGesture {
//                            isSelected.toggle()
//                        }
                })
            }
        }
        
        func sizee(){
            self.isSelected.toggle()
            }
        
        }
    

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
