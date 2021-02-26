//
//  signIn.swift
//
//  Ｐｒｏｊｅｃｔ
//
//  Created by 張馨予 on 2021/1/28.
//

import SwiftUI


struct SignUp: View {
    @State private var failed = false
    @State private var check:Bool = false
    
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var ConfirmPassword:String = ""
    
    @Binding var isSignUp:Bool
    //  @Namespace var names
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Button(action:{
                    withAnimation(){
                        isSignUp.toggle()
                    }
                }){
                    HStack {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.black.opacity(0.5))
                            .padding(.bottom,20)
                            .padding(.leading)
                        Spacer()
                        
                    }
                }
            }
            Spacer()
            
            Logo()
            
            Text("Sign Up")
                .font(.title)
                .bold()

            UserRegForm(email: $email, password: $password, ConfirmPassword: $ConfirmPassword)

            
            
            Spacer()

            smallButton(text: "Sign Up", textColor: .white, button: .black, image: ""){
                
            }
            .padding(.horizontal,50)
            
            Spacer()
            
            SocialSignUp()

            HStack{
                Text("Already have an account?")
                    .foregroundColor(.secondary)
                Button(action:{
                    //TODO:
                    //GO TO SIGN UP PAGE
                    //more
                }){
                    Text("Sign In")
                }
            }
            .font(.system(size: 14))
            .padding()
            

        }

    }
    
}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(isSignUp:.constant(false))
    }
}


struct SocialSignUp: View {
    var body: some View {
        HStack {
            Spacer()
            CircleButton(IconName: "applelogo") {
                // TODO:
                // SIGN IN WITH APPLE ID
            }
            Spacer()
            
            CircleButton(IconName: "GoogleIcon",isSystemName: false) {
                // TODO:
                // SIGN IN WITH APPLE ID
            }
            
            Spacer()
            
            CircleButton(IconName: "facebook",isSystemName: false) {
                // TODO:
                // SIGN IN WITH APPLE ID
            }
            
            Spacer()
            
            CircleButton(IconName: "twitter",isSystemName: false) {
                // TODO:
                // SIGN IN WITH APPLE ID
            }
            
            Spacer()
            
        }
    }
}

struct UserRegForm: View {
    @Binding var email:String
    @Binding var password:String
    @Binding var ConfirmPassword:String
    
    
    var body: some View {
        VStack(spacing:20){
            VStack {
                HStack{
                    Text("Email :")
                        .foregroundColor(.black)
                        .font(.headline)
                    Spacer()
                }
                
                TextFieldWithLineBorder(text: $email,placeholder: "Enter Your Email")
                    .keyboardType(.emailAddress)
            }
            .padding(.horizontal)
            
            VStack {
                HStack{
                    Text("Password :")
                        .foregroundColor(.black)
                        .font(.headline)
                    Spacer()
                }
                
                SeruceFieldWithLineBorder(text: $ConfirmPassword, placeholder: "Enter Your Password")
                
            }
            .padding(.horizontal)
            
            
            VStack {
                HStack{
                    Text("Enter Password :")
                        .foregroundColor(.black)
                        .font(.headline)
                    Spacer()
                }
                
                SeruceFieldWithLineBorder(text: $password, placeholder: "Enter Your Password")
                
            }
            .padding(.horizontal)
            
            
        }
        .padding()
    }
}
