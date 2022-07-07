//
//  MainScreen_II.swift
//  EnvironmentObject
//
//  Created by Doniyor on 06/07/22.
//

import SwiftUI

struct MainScreen_II: View {
    
    @EnvironmentObject var setting: UserSettings
    
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
                    SecondScreen_II()
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
            
            .navigationBarTitle("Environment Object", displayMode: .inline)
        }
    }
}

struct MainScreen_II_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen_II().environmentObject(UserSettings())
    }
}

