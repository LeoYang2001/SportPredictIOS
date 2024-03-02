//
//  GameView2.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 2/13/24.
//

import SwiftUI

struct GameView2: View {
    
    @State private var selectedFilter: LeagueFilter = .nba
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(LeagueFilter.allCases.count)
        return UIScreen.main.bounds.width / count  -  26
    }
    
    var body: some View {
        ZStack{
            Color.themeColor.ignoresSafeArea()
                .overlay{
                    VStack{
                        HStack(content: {
                            Text("Game")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Spacer()
                        })
                        .padding()
                        HStack{
                            ForEach(LeagueFilter.allCases){
                                Filter in
                                VStack{
                                    Text(Filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == Filter ? .semibold : .regular)
                                        .animation(nil)
                                    if selectedFilter == Filter {
                                        Rectangle()
                                            .foregroundColor(.green)
                                            .frame(width: filterBarWidth, height: 2)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    }else{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: filterBarWidth, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedFilter = Filter
                                    }
                                }
                            }
                        }
                        ScrollView{
                            ZStack{
                                VStack{
                                    HStack{
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "chevron.left")
                                                .foregroundStyle(.white)
                                        }
                                        .padding(.horizontal)
                                        
                                        Spacer()
                                        Button {
                                            
                                        } label: {
                                            HStack{
                                                HStack{
                                                    Image(systemName: "calendar")
                                                    Text("Monday Feb 12")
                                                }
                    //                            .fontWeight(.semibold)
                                                .foregroundStyle(.white)
                                                .font(.subheadline)
                                            }
                                            
                                            
                                        }
                                        Spacer()
                                        Button {
                                            
                                        } label: {
                                            Image(systemName: "chevron.right")
                                                .foregroundStyle(.white)
                                        }
                                        .padding(.horizontal)

                                    }
                                    .frame(maxWidth: .infinity, minHeight: 36)
                                    .background(
                                        RoundedRectangle(cornerRadius: 16)
                                            .fill(Color.secondColor)
                                    )
                                    .padding()
                                    
                                    LazyVStack{
                                        ForEach(0 ... 10, id: \.self) {
                                            user in
                                            VStack{
                                                Text("gameCell")
                                                    .padding(.vertical)
                                            }
                                            .padding(.vertical, 4)
                                        }
                                    }
                                }
                            }
                         
                        }
                       
                        Spacer()
                        
                    }
                    .foregroundStyle(.white)
                  
                }
        }
        
    }
}

#Preview {
    GameView2()
}


