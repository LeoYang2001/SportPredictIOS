//
//  LoginView.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 3/2/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    
    
    var body: some View {
        VStack{
            Spacer()
            
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            Button("Login") {
                
            }
            Spacer()
            Button("Don't have an account? Sign up.") {
                
            }
        }
        .padding()
    }
}
