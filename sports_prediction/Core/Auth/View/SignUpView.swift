//
//  SignUpView.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 3/2/24.
//

import Foundation
import SwiftUI

struct SignUpView: View{
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            
            TextField("Username", text: $username)
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button("Sign Up") {
                
            }
            
            Spacer()
            Button("Already have an account? Log in.") {
                
            }
        }
        .padding()
    }
}
