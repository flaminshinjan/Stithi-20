//
//  LoginView.swift
//  Stithi2.0
//
//  Created by Shinjan Patra on 05/10/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea(.all)
            VStack{
                HStack{
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }.padding()
                    .padding(.top)
                Spacer()
                HStack{
                    Image(systemName: "mail")
                    TextField("Email",text: $email )
                    
                    Spacer()
                    
                    if(email.count != 0){
                        Image(systemName: "checkmark")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                }
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
                
                )
                .padding()
                HStack{
                    Image(systemName: "lock")
                    TextField("Password",text: $password )
                    
                    Spacer()
                    
                    if(email.count != 0){
                        Image(systemName: "checkmark")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                }
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
                
                )
                .padding()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Text("Don't have an account?")
                        .foregroundColor(.black.opacity(0.7))
                    
                }
                Spacer()
                Spacer()
                
                Button{
                    
                }label:{
                   Text("Sign In")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black)
                        ).padding()
                    
                    
                }
                
            }
            
            
        }
    }
}

#Preview {
    LoginView()
}
