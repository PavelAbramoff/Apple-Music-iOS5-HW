//
//  TabBar.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 24.07.2022.
//

import SwiftUI

struct TabBar: View {
    @State var current = 2
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom),
               content: {
            
            TabView {
                
                Text("")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Медиатека")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            
            MiniPlayer()
        })
    }
}
