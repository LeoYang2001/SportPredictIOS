import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 1
    @State private var showCreateThread = false
    @State private var formerTab = 0
    let tabs:[TabData] = [
        TabData(title: AnyView(Text("demo")), imageName: "house", selectedImageName: "house.fill", tag: 0),
                TabData(title: AnyView(GameView()), imageName: "basketball", selectedImageName: "basketball.fill", tag: 1),
                TabData(title: AnyView(Text("")), imageName: "plus", selectedImageName: "plus", tag: 2),
                TabData(title: AnyView(LeaderBoardView()), imageName: "trophy", selectedImageName: "trophy.fill", tag: 3),
                TabData(title: AnyView(ProfileView()), imageName: "person", selectedImageName: "person.fill", tag: 4)
    ]
    var body: some View {
        ZStack{
            Color.themeColor(1).ignoresSafeArea()
                .overlay{
                    TabView(selection: $selectedTab){
                        ForEach(tabs, id: \.tag){
                            tab in
                            tab.title
                                .tabItem {
                                        Image(systemName: selectedTab == tab.tag ? tab.selectedImageName : tab.imageName)
                                            .environment(\.symbolVariants, selectedTab == tab.tag ? .fill : .none)
                                    }
                                    .onAppear {
                                        selectedTab = tab.tag
                                    }
                                    .tag(tab.tag)
                        }
                    
                    }
                    .customTabViewModifier(selectedTab: $selectedTab, showCreateThread: $showCreateThread) {
                        Text("sheetView")
                    }
                    
                }
        }
    }
   
}

struct TabData {
    var title: AnyView
    var imageName: String
    var selectedImageName: String
    var tag: Int
}


#Preview {
    TabBarView()
}




