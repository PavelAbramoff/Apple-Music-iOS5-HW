//
//  TabBar.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 24.07.2022.
//

import SwiftUI

struct TabBar: View {
    
    // Selected Tab Index
    // Default is third
    @State var current = 2
    
    //Miniplayer Properties
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
      
        TabView(selection: $current){
            ContentView()
                .tag(0)
                .tabItem {
                    
                    Image(systemName: "house.fill")
                    
                    Text("Медиатека")
                }
            RadioView()
                .tag(1)
                .tabItem
            {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    
                    Text("Радио")
                }
            Search()
                .tag(2)
                .tabItem {
                    
                    Image(systemName: "magnifyingglass")
                    
                    Text("Поиск")
                }
        }
            MiniPlayer(animation: animation, expand: $expand)
        })
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
