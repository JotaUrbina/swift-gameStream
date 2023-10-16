//
//  SignUpView.swift
//  GameStream
//
//  Created by Javier Urbina on 16-10-23.
//

import SwiftUI

struct SignUpView: View {
    
    @State var userMail: String = ""
    @State var userPassword: String = ""
    
    var body: some View {
        ZStack{
            Color("background").ignoresSafeArea()
            
            ScrollView{
                
                VStack{
                    Text("Elige tu foto de perfil")
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    
                    Text("Puedes cambiar o elegirla más adelante")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Spacer()
                        .frame(height: 24.0)
                    
                    ZStack{
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.gray)
                        
                        Image(systemName: "camera")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
                    .frame(height: 48.0)
                
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
                    Text("Contraseña*")
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    
                    ZStack (alignment: .leading){
                        if userPassword.isEmpty{
                            Text("********")
                                .foregroundColor(Color.gray)
                        }
                        
                        SecureField("", text: $userPassword)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color("highlight"))
                }
                
                Spacer()
                    .frame(height: 36.0)
                
                VStack (alignment: .leading) {
                    Text("Confirmar contraseña*")
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    
                    ZStack (alignment: .leading){
                        if userPassword.isEmpty{
                            Text("********")
                                .foregroundColor(Color.gray)
                        }
                        
                        SecureField("", text: $userPassword)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color("highlight"))
                }
                
                Spacer()
                    .frame(height: 52.0)
                
                VStack {
                    Button(action: {
                        print("hola")},
                           label: {
                        Text("REGÍSTRATE")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        .font(.title2)})
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14.0)
                    .overlay(RoundedRectangle(cornerRadius: 6.0)
                        .stroke(Color("highlight"), lineWidth: 2.0)
                        .shadow(color: Color("highlight"), radius: 6.0))
                    
                    Spacer()
                        .frame(height: 48.0)
                    
                    Text("Regístrate con:")
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
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
