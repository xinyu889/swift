//
//  Login.swift
//  Ｐｒｏｊｅｃｔ
//
//  Created by 張馨予 on 2021/1/28.
//

import SwiftUI
struct SignIn: View {
    @State private var failed = false
    @State private var check:Bool = false
    
    @State private var email:String = ""
    @State private var name:String = ""
    @State private var password:String = ""
    
    @Binding var isSignIn:Bool
  //  @Namespace var names
    var body: some View {
            VStack {
                VStack {
                    Button(action:{
                        //todo
                        withAnimation(){
                            isSignIn.toggle()
                        }
                    }){
                        HStack {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(Color.black.opacity(0.5))
                                .padding(.bottom,20)
                            Spacer()
                            
                        }
                    }
                    HStack{
                        Text("Welcome!")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    HStack {
                        VStack(alignment:.leading){
                            Text("Sign In with Social to fill the form and continue")
                                .padding(0)
                                .font(.caption2)
                                .foregroundColor(.gray)
                                .padding(.top,10)
                                .padding(.bottom,10)
                            
                            HStack(spacing:50)
                            {
                                Button(action: {
                                        print("Sign up using Facebook Instead")})
                                {
                                    
                                    Image("fb")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    
                                    
                                }
                                
                                Button(action: {print("Sign up using google Instead")})
                                {
                                    
                                    Image("google")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                }
                            }
                            .padding(.bottom,25)
                            .padding(.leading)
                        }
                        Spacer()
                    }
                    Divider()
                        .background(Color.black)
                
                    
                    
                    
                    VStack {
                        HStack {
                            Image(systemName: "envelope")
                                .font(.system(size:20))
                            TextFieldWithLineBorder(text: $email, placeholder:  "email")
                                .keyboardType(.emailAddress)
                        }
                        .padding()
                        .frame(width: 370)
                        .font(.body)
                        
                        HStack {
                            Image(systemName: "lock")
                                .font(.system(size:20))
                                .foregroundColor(.secondary)
                            SeruceFieldWithLineBorder(text: $password, placeholder: "Password")
                        }
                        .padding()
                        .frame(width: 370)
                        .font(.body)
                    }
                    
                    Spacer()
                }
                .padding()
                
                VStack {
                    HStack {
                        //if checked change to check image
                        Button(action:{
                            withAnimation(){
                                check.toggle()
                            }
                        }){
                            Image(systemName: check ? "checkmark.circle.fill"
                                    : "circle")
                                .font(.system(size: 20))
                        }

                        Text("Remember me next time")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                    }
                    .padding(.leading,20)
                    
                    //if no check change color and different function
                    smallButton(text: "Sign In", textColor: .white, button: check ? Color("ButtonBlue") : Color.gray,image: check ? "arrow.forward" : ""){
                        //check and return result
             
                    }
                    .padding(.top,20)
                    .frame(width:250,height: 50)
                    
                    //a sign up Button
                }
            
        }
        .frame(width: 370)
    
    }
    
    
    fileprivate func checkUserLogin(){

        
        
    }
}
struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn(isSignIn: .constant(false))
    }
}
