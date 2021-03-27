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
    @State private var FirstName:String = ""
    @State private var LastName:String = ""
    
    //Date???

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
                        Image(systemName: "arrow.backward")
                            .font(.title)
                            .foregroundColor(Color.black.opacity(0.5))
                            .padding(.bottom,20)
                            .padding(.leading)
                        Spacer()
                        
                    }
                }
            }
            Spacer()

            
            HStack {
                Text("Sign Up")
                    .font(.system(size:35))
                    .bold()
                    .foregroundColor(.orange)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.leading,10)

            UserRegForm(email: $email, password: $password, ConfirmPassword: $ConfirmPassword, FirstName: $FirstName, LastName: $LastName)
            
            
            Spacer()
            

            smallButton(text: "Sign Up", textColor: .white, button: .black, image: ""){
                
            }
            .padding(.horizontal,50)
            
            Spacer()
            
            Text("OR")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.vertical,5)
            
            
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
    
    @Binding var FirstName:String
    @Binding var LastName:String
    
    
    var body: some View {
        VStack(spacing:20){
            VStack {
                HStack{
                    Text("First Name :")
                        .foregroundColor(.black)
                        .font(.headline)
                    Spacer()
                }
                
                TextFieldWithLineBorder(text: $FirstName,placeholder: "First Name")
            }
            .padding(.horizontal)
            
            VStack {
                HStack{
                    Text("Last Name :")
                        .foregroundColor(.black)
                        .font(.headline)
                    Spacer()
                }
                
                TextFieldWithLineBorder(text: $LastName,placeholder: "Last Name")
            }
            .padding(.horizontal)
            
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
