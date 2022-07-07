//
//  HomeScreen.swift
//  Hermes
//
//  Created by Doniyor on 27/06/22.
//

import SwiftUI

struct HomeScreen: View {
    @State private var welcome: String = "str_welcome".localized()
    
    var body: some View {
        VStack {
            VStack {
                Text(welcome)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            HStack(spacing: 0) {
                
                VStack {
                    Button("English") {
                        Bundle.setLanguage(lang: "en")
                        welcome = "str_welcome".localized()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                }
                
                VStack {
                    Button("Korean") {
                        Bundle.setLanguage(lang: "ko")
                        welcome = "str_welcome".localized()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray)
                }
                
                VStack {
                    Button("Chinease") {
                        Bundle.setLanguage(lang: "zh-HK")
                        welcome = "str_welcome".localized()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: 70)
            
            Divider()
        }
    }
}
    
struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
        
    }
}

//               VStack {
//                    Button("Russian") {
//                        Bundle.setLanguage(lang: "ru")
//                        welcome = "str_welcome".localized()
//                    }
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.blue)
//                }
//
//                VStack {
//                    Button("Uzbek") {
//                        Bundle.setLanguage(lang: "uz")
//                        welcome = "str_welcome".localized()
//                    }
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.green)
//                }
