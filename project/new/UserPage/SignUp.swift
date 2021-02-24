//
//  signIn.swift
//
//  Ｐｒｏｊｅｃｔ
//
//  Created by 張馨予 on 2021/1/28.
//

import SwiftUI


struct signUp: View {
    @State private var email:String = ""
    @State private var password:String = ""
    
    @State private var check:Bool = false
    
    @Binding var isSignUp:Bool
    
    //    @Binding var isSignup:Bool
    //    let verticalPaddingForForm = 20.0
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    Button(action:{
                        //todo
                        withAnimation(){
                            isSignUp.toggle()
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
                        Text("Let's Get Started!")
                            .bold()
                            .font(.title)
                        Spacer()
                    }
                    HStack {
                        VStack(alignment:.leading){
                            Text("SignUp with Social to fill the form and continue")
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
                                .foregroundColor(.secondary)
                            TextFieldWithLineBorder(text: $email, placeholder: "email")
                                .keyboardType(.emailAddress)
                        }
                        .padding()
                        .frame(width: 370)
                        .font(.body)
                        
                        HStack {
                            Image(systemName: "person")
                                .font(.system(size:20))
                                .foregroundColor(.secondary)
                            TextFieldWithLineBorder(text: $email, placeholder: "Name")
                        }
                        .padding()
                        .frame(width: 370)
                        .font(.body)
                        
                        HStack {
                            Image(systemName: "lock")
                                .font(.system(size:20))
                                .foregroundColor(.secondary)
                            SeruceFieldWithLineBorder(text: $email, placeholder: "Password")
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
                            Image(systemName: check ? "checkmark.circle.fill" : "circle" )
                                .font(.system(size: 20))
                        }
                        
                        
                        Text("by signing up you agree to our terms & conditions and privacy policy")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                    }
                    .padding(.leading,20)
                    
                    //if no check change color and different function
                    smallButton(text: "Sign Up", textColor: .white, button: check ? Color("ButtonBlue") : Color.gray,image: check ? "arrow.forward" : ""){
                        //check and return result
             
                    }
                    .padding(.top,20)
                    .frame(width:250,height: 50)
                    
                    //a sign up Button
                }
            }
        }
        .frame(width: 370)
    
    }
    
}


struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp(isSignUp: .constant(false))
    }
}

