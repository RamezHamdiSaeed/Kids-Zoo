//
//  GridOfMachedItems.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 09/04/2024.
//

import SwiftUI

struct GridOfMachedItems: View {
    
    var animaleGridView:[GridItem]=Array(repeating: GridItem(.flexible()), count: 3)
    
   @State var animalsImages:[String]=[String(describing: AnimalsImages.cat),
                                String(describing: AnimalsImages.fox),
                                String(describing: AnimalsImages.lion),
                                String(describing: AnimalsImages.racoon),
                                String(describing: AnimalsImages.shark),
                                String(describing: AnimalsImages.tiger),
                              String(describing: AnimalsImages.cat),
                              String(describing: AnimalsImages.fox),
                              String(describing: AnimalsImages.lion),
                              String(describing: AnimalsImages.racoon),
                              String(describing: AnimalsImages.shark),
                              String(describing: AnimalsImages.tiger)
    ]
    
    @State var itemsIndexesToBeVisible:[Int] = [];
    @State var noOfPersistentVisibleItems:Int = 0;
//    @State var noOf
    init(){
        animalsImages.shuffle()
    }
    var body: some View {
        LazyVGrid(columns:animaleGridView,spacing: 30, content: {
            ForEach(0..<animalsImages.count,id: \.self){
               index in
                Image(animalsImages[index])
                    .resizable()
                    .frame(width: 70,height: 70,alignment: .center)
                    .background(Color("AccentColor"))
                    .cornerRadius(50)
                    .overlay(
                        Color("AccentColor")
                            .opacity(itemsIndexesToBeVisible.contains(index) ? 0 :1)
                            
                    )
                        .cornerRadius(50)
                        .onTapGesture {
                            if !itemsIndexesToBeVisible.contains(index)
                            {
                                itemsIndexesToBeVisible.append(index)
                                
                                if itemsIndexesToBeVisible.count % 2 == 0
                                    && noOfPersistentVisibleItems < itemsIndexesToBeVisible.count-1{
                                    let prevVisibleElementIndex=index-1
                                    if animalsImages[itemsIndexesToBeVisible[index]] == animalsImages[ itemsIndexesToBeVisible[prevVisibleElementIndex]] {
                                        noOfPersistentVisibleItems += 2
                                    }
                                    else {
                                        for _ in 1...2 {
                                            itemsIndexesToBeVisible.removeLast()
                                        }
                                    }
                                }
                            }
                        }


               
           }
            
        
    }
        )    }
}

struct GridOfMachedItems_Previews: PreviewProvider {
    static var previews: some View {
        GridOfMachedItems()
    }
}
