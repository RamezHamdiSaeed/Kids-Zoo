//
//  MainView.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 05/04/2024.
//

import SwiftUI

struct MainView: View {
    @AppStorage("Pagination") var pagination:String = String(describing: Pages.MainView)

    
    var body: some View {
        VStack {
            TabBar().padding(.top,50)
            Spacer()
            GridOfMachedItems().padding(.bottom,80)
            Spacer()
        }.edgesIgnoringSafeArea(.all)
 }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
