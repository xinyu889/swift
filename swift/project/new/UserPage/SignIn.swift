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
        VStack{
            HStack {
                Spacer()
                Button(action:{
                    withAnimation(){
                        isSignIn.toggle()
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
            
            SignInCell(email: $email, name: $name, password: $password)

        }
    }
}
struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn(isSignIn: .constant(false))
    }
}

struct SignInCell : View{
    
    @Binding var email:String
    @Binding var name:String
    @Binding var password:String
    
    var body: some View{
        Logo()
        
        Text("Sign In")
            .font(.system(size:35))
            .bold()
            .foregroundColor(.orange)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        
        Group{
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
                
                SeruceFieldWithLineBorder(text: $password, placeholder: "Enter Your Password")
                
            }
            .padding(.horizontal)
            
            HStack {
                Spacer()
                
                Button(action:{
                    //TODO
                    //GO TO FROGET PASSWORD
                    
                }){
                    Text("Forget Password?")
                        .foregroundColor(.secondary)
                        .font(.footnote)
                }
                
            }
            .padding(.horizontal)
        }
        .padding()
        
        Spacer()
        
        smallButton(text: "Sign In", textColor: .white, button: .black, image: ""){
            
        }
        .padding(.horizontal,50)
        
        Text("OR")
            .font(.subheadline)
            .foregroundColor(.secondary)
            .padding(.vertical)
        
        Spacer()
        
        SocialLogo()
        
        HStack{
            Text("Don't have an accont?")
                .foregroundColor(.secondary)
            Button(action:{
                //TODO:
                //GO TO SIGN UP PAGE
                //more
            }){
                Text("Sign Up")
            }
        }
        .font(.system(size: 14))
        .padding()
    }
}



struct Logo: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "circle.fill")
                    .font(.caption2)
                Image(systemName: "circle.fill")
                    .font(.caption2)
            }
            Image(systemName: "mustache")
        }
        .font(.system(size:150))
        .padding(.bottom)
        .padding(.top)
    }
}

struct SocialLogo: View {
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
                
                //NOT WORKING YET
//                let manger = LoginManager()
//                manger.logIn(permissions: ["public_profile","emiil"]){ result  in
//
//                    if case LoginResult.success(granted: _, declined: _, token: _) = result{
//                        print("OK")
//                    }
//                    else{
//                        print("fail")
//                    }
//
//                }
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


