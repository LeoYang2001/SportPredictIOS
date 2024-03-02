//
//  LeaderBoardCell.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 2/23/24.
//

import SwiftUI

struct LeaderBoardCell: View {
    let rank:Int
    let username:String
    let points:String
    var body: some View {
        HStack{
            HStack(alignment:.center){
                Text("\(rank)")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            Spacer()
            HStack{
                Text("\(points)")
                    .font(.subheadline)
//                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            Spacer()
            HStack(alignment:.center){
                Text("\(username)")
                    .font(.subheadline)
//                    .fontWeight(.bold)
                    .foregroundColor(.green)
            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }.padding(.horizontal)
        Divider()
            .frame(height: 1)
            .background(Color.secondColor(0.4))
    }
}
