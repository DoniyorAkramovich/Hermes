//
//  SecondScreen.swift
//  Hermes
//
//  Created by Doniyor on 27/06/22.
//

import SwiftUI

struct SecondScreen: View {
    @ObservedObject var settings: UserSettings
    
    var body: some View {
        VStack {
            Text("ID: \(settings.id)")
                .font(.headline)
                .padding()
            Text("Password: \(settings.password)")
                .font(.headline)
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray .opacity(0.1))
        .cornerRadius(20)
        .padding()
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(settings: UserSettings())
    }
}
