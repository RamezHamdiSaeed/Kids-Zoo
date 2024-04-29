//
//  signIn.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 05/04/2024.
//

import SwiftUI

struct SignIn: View {
    
    @State var userNameValue:String=""
    @State var passwordValue:String=""
    
    @AppStorage("Pagination") var pagination:String = String(describing: Pages.SignIn)
    @AppStorage("userName") var userName:String=""
    @AppStorage("password") var password:String=""

    
    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFit()
            VStack{
                Spacer()
                TextField("UserName", text: $userNameValue)
                    .padding(15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                
                TextField("password", text: $passwordValue)
                    .padding(15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.top,20)
                
                HStack{
                    Spacer()
                    Text("Fogrot PassWord ?")
                        .padding(.trailing,20)
                        
                }.padding(.top,20)
                Button(action: {
                    if !userNameValue.isEmpty && userName==userNameValue {
                        if !passwordValue.isEmpty && password==passwordValue{
                            pagination=String(describing: Pages.MainView)
                        }
                        
                    }
                }, label: {
                    Text("Go")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.white))
                            .frame(width:250,height:50,alignment: .center)
                            .background(Color("4thColor"))
                            .cornerRadius(15)
                            .padding(.top,20)
                    
                })
                
                HStack{
                    Text("Don't Have Account yet ?!")
                        .dynamicTypeSize(.large)
                    Button(action: {
                        pagination=String(describing: Pages.SignUp)
                    }, label: {
                        Text("Sign Up")
                        .foregroundColor(Color("4thColor"))
                        
                    })
                }.padding(.top,20)
                
                Image("background2")
                    .resizable()
                    .scaledToFit()
                
            }

            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
