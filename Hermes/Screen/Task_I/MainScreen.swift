//
//  MainScreen.swift
//  Hermes
//
//  Created by Doniyor on 27/06/22.
//

import SwiftUI

struct MainScreen: View {
    @ObservedObject var setting = UserSettings()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter ID", text: $setting.id)
                    .padding()
                    .frame(height: 45)
                    .foregroundColor(.black)
                    .background(Color.gray .opacity(0.1))
                    .cornerRadius(10)
                
                SecureField("Enter Password", text: $setting.password)
                    .padding()
                    .frame(height: 45)
                    .foregroundColor(.black)
                    .background(Color.gray .opacity(0.1))
                    .cornerRadius(10)
                    
                NavigationLink {
                    SecondScreen(settings: setting)
                } label: {
                    HStack {
                        Spacer()
                        Text("Show")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 45)
                        
                        Spacer()
                    }
                    .background(Color.blue)
                    .cornerRadius(10)
                }
            }
            .padding()
            
            .navigationBarTitle("Observable Object", displayMode: .inline)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
