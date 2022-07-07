//
//  SecondScreen_II.swift
//  EnvironmentObject
//
//  Created by Doniyor on 06/07/22.
//

import SwiftUI

struct SecondScreen_II: View {
    
    @EnvironmentObject var settings: UserSettings
    
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

struct SecondScreen_II_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen_II().environmentObject(UserSettings())
    }
}
