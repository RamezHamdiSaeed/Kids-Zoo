//
//  Kids_ZooApp.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 05/04/2024.
//

import SwiftUI

@main
struct Kids_ZooApp: App {
    @AppStorage("Pagination") var pagination:String = String(describing: Pages.SignIn)

    init(){
        pagination=String(describing: Pages.SignIn)
    }
    var body: some Scene {
        WindowGroup {
            if pagination == String(describing:Pages.SignIn){
                SignIn()
            }
            else if pagination == String(describing: Pages.SignUp){
                SignUp()
            }
            else{
                MainView()
            }
        }
    }
}
