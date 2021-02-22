//
//  Login.swift
//  Ｐｒｏｊｅｃｔ
//
//  Created by 張馨予 on 2021/1/28.
//

import SwiftUI
struct Login: View {
    @State private var name: String = ""
    @State private var password: String = ""
    let verticalPaddingForForm = 40.0
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Text("Welcome To OLAY")
                    .font(.title)
                HStack {
                               
                    Image(systemName:"play.rectangle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        }
                HStack {
                    Image(systemName: "person")
                    .foregroundColor(.secondary)
                    TextField("Enter your name", text: $name)
                    .foregroundColor(Color.black)
                }
                .padding()
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
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
                Button(action: {})
                {
                    Text("Forget password? Click here")
                    .padding(0)
                }
                
                
                HStack(spacing:30)
                {
                    Button(action: {}) {
                      Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10.0)
                    }
                    Button(action: {}) {
                      Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10.0)
                    }
                }
                
                
                
                
                
            }.padding(.horizontal,
                      CGFloat(verticalPaddingForForm))
            
        }
    };
}
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

