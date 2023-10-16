//
//  ContentView.swift
//  GameStream
//
//  Created by Javier Urbina on 15-10-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            VStack{
                HStack {
                    Image("01_logo-game")
                    Image("01_logo-name")
                }
                .padding(.bottom, 55.0)
                .padding(.top, 8.0)
                SesionButtonsView()
            }
        }
    }
}


struct SesionButtonsView: View {
    
    @State var isLogin: Bool = true
    
    var body: some View {
        
        HStack{
            Button("INICIA SESIÓN") {
                isLogin = true
            }
            .font(.title3)
            .foregroundColor(isLogin ? .white : .gray)
            .padding(.leading, 20.0)
            Spacer()
            
            Button("REGÍSTRATE") {
                isLogin = false
            }
            .font(.title3)
            .foregroundColor(!isLogin ? .white : .gray)
            .padding(.trailing, 20.0)
        }
        
        Spacer()
            .frame(height: isLogin ? 80 : 48)
        
        if isLogin  {
            LogInView()
        } else {
            SignUpView()
        }
        
        
    }
}

struct LogInView : View {
    @State var userMail: String = ""
    @State var userPassword: String = ""
    
    var body: some View {
        
        ScrollView{
            VStack (alignment: .leading){
                Text("Correo electrónico")
                    .fontWeight(.black)
                    .foregroundColor(Color("highlight"))
                
                ZStack (alignment: .leading){
                    if userMail.isEmpty{
                        Text(verbatim: "ejemplo@gmail.com")
                            .foregroundColor(.gray)
                        
                    }
                    
                    TextField("", text: $userMail)
                        .foregroundColor(.white)
                }
                
                Divider()
                    .frame(height: 1)
                    .background(Color("highlight"))
            }
                
                Spacer()
                    .frame(height: 36.0)
                
            VStack (alignment: .leading) {
                Text("Contraseña")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                ZStack (alignment: .leading){
                    if userPassword.isEmpty{
                        Text("Contraseña")
                            .foregroundColor(Color.gray)
                    }
                    
                    SecureField("", text: $userPassword)
                        .foregroundColor(.white)
                }
                
                Divider()
                    .frame(height: 1)
                    .background(Color("highlight"))
                
                Text("¿Olvidaste tu contraseña?")
                    .foregroundColor(Color("highlight"))
                    .frame(maxWidth: .infinity,
                           alignment: .trailing)
            }
                
                Spacer()
                    .frame(height: 52.0)
                
            VStack {
                Button(action: {
                    print("hola")},
                       label: {
                    Text("INICIAR SESIÓN")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title2)})
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14.0)
                    .overlay(RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color("highlight"), lineWidth: 2.0)
                        .shadow(color: Color("highlight"), radius: 6.0))
                
                Spacer()
                    .frame(height: 66.0)
                
                Text("Inicia sesión con redes sociales")
                    .foregroundColor(.white)
                
                HStack{
                    Button(action: {
                        print("Facebook")
                    }, label: {
                        Text("Facebook")
                            .frame(width: 150, height: 40)
                            .foregroundColor(.white)
                            .background(Color("light-bg"), in: RoundedRectangle(cornerRadius: 6.0))
                            .fontWeight(.bold)
                            
                    })
                    
                    Button(action: {
                        print("Twitter")
                    }, label: {
                        Text("Twitter")
                            .frame(width: 150, height: 40)
                            .foregroundColor(.white)
                            .background(Color("light-bg"), in: RoundedRectangle(cornerRadius: 6.0))
                            .fontWeight(.bold)
                            
                    })
                }
            }
        }.padding(.horizontal, 20.0)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

