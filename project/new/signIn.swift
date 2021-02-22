//
//  signIn.swift
//
//  Ｐｒｏｊｅｃｔ
//
//  Created by 張馨予 on 2021/1/28.
//

import SwiftUI
struct signIn: View {
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var password1: String = ""
    let verticalPaddingForForm = 20.0
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Text(" ")
                Text("Welcome To OLAY")
                    .font(.title)
                    .padding()
                HStack {
                               
                    Button(action: {
                        print("Add photo")
                    }) {
                        VStack(alignment: .center) {
                            Text("+")
                            .font(.system(size: 50))
                            Text("Add Photo")
                                .font(.system(size: 20))
                        }.padding()
                        .frame(width: 130, height: 130)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                    }
                    .clipShape(Circle())
                    .padding(.bottom, 10)
                        }
                HStack {
                    Image(systemName: "person")
                    .foregroundColor(.secondary)
                    TextField("Enter your name", text: $name)
                    .foregroundColor(Color.black)
                }
                .padding()
                .frame(width: 300)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Image(systemName: "key")
                    .foregroundColor(.secondary)
                     SecureField("Enter password", text: $password)
                        .foregroundColor(Color.black)
                    
                }
                .padding()
                .frame(width: 300)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Image(systemName: "key")
                    .foregroundColor(.secondary)
                     SecureField("Enter password again", text: $password1)
                        .foregroundColor(Color.black)
                    
                }
                .padding()
                .frame(width: 300)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                
                
                
                HStack(spacing:30)
                {
                    Button(action: {}) {
                      Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10.0)
                        
                    }
                    
                }
                Text("Choose another application to register")
                    .padding(0)
                    .foregroundColor(.blue)
                
                HStack(spacing:30)
                {
                    Button(action: {
                        print("Sign up using Facebook Instead")})
                    {
                                                
                            Image("fb")
                            .resizable()
                            .frame(width: 40, height: 40)
                                                    
                                                
                    }
                    Button(action: {print("Sign up using line Instead")})
                    {
                                                
                        Image("Line")
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
                
                    
                
                
                Spacer()
                
                
            }.padding(.horizontal,
                      CGFloat(verticalPaddingForForm))
            
        }
        .frame(height: 680.0)
    };
}
struct signIn_Previews: PreviewProvider {
    static var previews: some View {
        signIn()
    }
}
