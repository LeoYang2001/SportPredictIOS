//
//  ContentView.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 2/12/24.
//

import SwiftUI
import AmplifyPlugins

struct ContentView: View {
    
    //initialize
    init(){
        configureAmplify()
    }
    
    var body: some View {
        ZStack{
            Color.themeColor(1).ignoresSafeArea()
                .overlay{
                    VStack{
                        SignUpView()
                    }
                }
        }
        
    }
    
    private func configureAmplify(){
        do{
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured successfully")
        }
        catch{
            print("could not initialize Amplify", error)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static func themeColor(_ opacity: Double = 1.0) -> Color {
           return Color(red: 34/255, green: 34/255, blue: 44/255).opacity(opacity)
       }
       
   static func secondColor(_ opacity: Double = 0.8) -> Color {
       return Color(red: 89/255, green: 89/255, blue: 115/255).opacity(opacity)
   }
}
