//
//  ConfirmationView.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 3/2/24.
//

import Foundation
import SwiftUI

struct ConfirmationView: View {
    
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        VStack{
            Text("Username: \(username)")
            TextField("Confirmation Code", text: $confirmationCode)
            Button("Confirm") {
                
            }
        }.padding()
    }
}
