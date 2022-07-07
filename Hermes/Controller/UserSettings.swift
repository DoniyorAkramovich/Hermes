//
//  UserSettings.swift
//  Hermes
//
//  Created by Doniyor on 27/06/22.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var id: String = ""
    @Published var password: String = ""
}
