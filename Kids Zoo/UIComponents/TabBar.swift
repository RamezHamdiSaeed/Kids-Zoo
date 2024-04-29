//
//  TabBar.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 06/04/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack{
            Image("avatar")
                .resizable()
                .scaledToFill()
                .frame(width: 70,height: 70 ,alignment: .center)
                .clipped()
                .cornerRadius(50)
            Spacer()
            Image("slider3")
                .resizable()
                .frame(width: 50,height: 70,alignment: .bottom)
            
        }.background(Color("AccentColor"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
