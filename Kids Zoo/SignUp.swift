//
//  SignUp.swift
//  Kids Zoo
//
//  Created by Ramez Hamdi Saeed on 05/04/2024.
//

import SwiftUI

struct SignUp: View {
    @State var userNameValue:String=""
    @State var passwordValue:String=""
    @State var country:String=""
    @State var childAge:String=""
    
    @AppStorage("Pagination") var pagination:String = String(describing: Pages.SignIn)
    @AppStorage("userName") var userName:String=""
    @AppStorage("password") var password:String=""


    var body: some View {
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
            VStack{
                TextField("userName", text:$userNameValue)
                    .padding(.all,15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.vertical,20)
                TextField("password",text: $passwordValue)
                    .padding(.all,15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                TextField("country",text:$country)
                    .padding(.all,15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                TextField("child Age",text: $childAge)
                    .padding(.all,15)
                    .background(Color("AccentColor"))
                    .cornerRadius(15)
                    .padding(.horizontal,20)
                    .padding(.vertical,20)
                
                Button(action: {
                    if !userNameValue.isEmpty && !passwordValue.isEmpty{
                        userName=userNameValue
                        password=passwordValue
                        pagination=String(describing: Pages.SignIn)
                    }
                }, label: {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.white))
                            .frame(width:250,height:50,alignment: .center)
                            .background(Color("4thColor"))
                            .cornerRadius(15)
                            .padding(.top,20)
                    
                })
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
